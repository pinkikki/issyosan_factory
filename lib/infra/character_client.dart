import 'package:flutter/cupertino.dart';
import 'package:issyosan_factory/domains/character/character.dart';
import 'package:issyosan_factory/domains/character/character_repository.dart';
import 'package:logging/logging.dart';

@immutable
class CharacterClient implements CharacterRepository {
  final Logger logger = Logger('CharacterClient');

  @override
  Future<List<Character>> list() async {
    return [
      Character(id: 1, name: 'pinkikki', isMob: false),
      Character(id: 2, name: 'pokuri', isMob: false),
      Character(id: 3, name: 'uminekoman', isMob: false),
      Character(id: 4, name: 'weaselShopManager', isMob: true),
    ];
  }

  @override
  Future<Character> get(int id) async {
    final characters = await list();
    return characters.firstWhere((e) => e.id == id);
  }
}
