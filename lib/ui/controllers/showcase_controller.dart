import 'package:issyosan_factory/domains/letter/paper_repository.dart';
import 'package:issyosan_factory/ui/controllers/showcase_state.dart';
import 'package:logging/logging.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../locator.dart';

class ShowcaseController extends StateNotifier<ShowcaseState> {
  ShowcaseController() : super(ShowcaseState());

  final PaperRepository repo = locator.get<PaperRepository>();
  Logger logger = Logger('ShowcaseController');

  Future<void> fetch() async {
    state = state.copyWith(papers: await repo.list());
    logger.fine('paperCount=[${state.papers.length.toString()}].');
  }
}
