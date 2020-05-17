import 'package:issyosan_factory/domains/character/character_repository.dart';
import 'package:issyosan_factory/ui/controllers/character_state.dart';
import 'package:logging/logging.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../locator.dart';

class CharacterController extends StateNotifier<CharacterState> {
  CharacterController() : super(CharacterState());

  final CharacterRepository repo = locator.get<CharacterRepository>();
  Logger logger = Logger('CharacterController');

  Future<void> fetch() async {
    state = state.copyWith(characters: await repo.list());
    logger.fine('characterCount=[${state.characters.length.toString()}].');
  }
}
