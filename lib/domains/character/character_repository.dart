import 'character.dart';

abstract class CharacterRepository {
  Future<Character> get(int id);

  Future<List<Character>> list();
}
