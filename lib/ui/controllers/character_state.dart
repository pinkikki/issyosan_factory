import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:issyosan_factory/domains/character/character.dart';

part 'character_state.freezed.dart';

@freezed
abstract class CharacterState with _$CharacterState {
  // @lateを使用していない場合は、constつける
  factory CharacterState({@Default(<Character>[]) List<Character> characters}) =
      _CharaterState;

  // https://pub.dev/packages/freezed#late
  @late
  List<Character> get reverse => characters.reversed.toList();
}
