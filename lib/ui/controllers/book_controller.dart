import 'package:flutter/cupertino.dart';
import 'package:issyosan_factory/domains/letter/paper_repository.dart';
import 'package:logging/logging.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../locator.dart';
import 'book_state.dart';

class BookController extends StateNotifier<BookState> with LocatorMixin {
  BookController() : super(const BookState());

  final PageController _pageController = PageController(initialPage: 0);

  PageController get pageController => _pageController;

  final PaperRepository repo = locator.get<PaperRepository>();
  Logger logger = Logger('BookController');

  Future<void> fetch() async {
    state = state.copyWith(papers: await repo.list());
    logger.fine('paperCount=[${state.papers.length.toString()}].');
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  void initState() {
    fetch();
  }
}
