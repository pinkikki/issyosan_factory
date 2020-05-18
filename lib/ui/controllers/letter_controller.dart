import 'package:issyosan_factory/domains/letter/paper_repository.dart';
import 'package:issyosan_factory/ui/controllers/letter_state.dart';
import 'package:logging/logging.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../locator.dart';

class LetterController extends StateNotifier<LetterState> {
  LetterController() : super(LetterState());

  final PaperRepository repo = locator.get<PaperRepository>();
  Logger logger = Logger('LetterController');

  Future<void> fetch() async {
    state = state.copyWith(papers: await repo.list());
    logger.fine('paperCount=[${state.papers.length.toString()}].');
  }
}
