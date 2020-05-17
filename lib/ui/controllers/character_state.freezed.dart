// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'character_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CharacterStateTearOff {
  const _$CharacterStateTearOff();

  _CharaterState call({List<Character> characters = const <Character>[]}) {
    return _CharaterState(
      characters: characters,
    );
  }
}

// ignore: unused_element
const $CharacterState = _$CharacterStateTearOff();

mixin _$CharacterState {
  List<Character> get characters;

  $CharacterStateCopyWith<CharacterState> get copyWith;
}

abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res>;
  $Res call({List<Character> characters});
}

class _$CharacterStateCopyWithImpl<$Res>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  final CharacterState _value;
  // ignore: unused_field
  final $Res Function(CharacterState) _then;

  @override
  $Res call({
    Object characters = freezed,
  }) {
    return _then(_value.copyWith(
      characters: characters == freezed
          ? _value.characters
          : characters as List<Character>,
    ));
  }
}

abstract class _$CharaterStateCopyWith<$Res>
    implements $CharacterStateCopyWith<$Res> {
  factory _$CharaterStateCopyWith(
          _CharaterState value, $Res Function(_CharaterState) then) =
      __$CharaterStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Character> characters});
}

class __$CharaterStateCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res>
    implements _$CharaterStateCopyWith<$Res> {
  __$CharaterStateCopyWithImpl(
      _CharaterState _value, $Res Function(_CharaterState) _then)
      : super(_value, (v) => _then(v as _CharaterState));

  @override
  _CharaterState get _value => super._value as _CharaterState;

  @override
  $Res call({
    Object characters = freezed,
  }) {
    return _then(_CharaterState(
      characters: characters == freezed
          ? _value.characters
          : characters as List<Character>,
    ));
  }
}

class _$_CharaterState implements _CharaterState {
  _$_CharaterState({this.characters = const <Character>[]})
      : assert(characters != null);

  @JsonKey(defaultValue: const <Character>[])
  @override
  final List<Character> characters;

  bool _didreverse = false;
  List<Character> _reverse;

  @override
  List<Character> get reverse {
    if (_didreverse == false) {
      _didreverse = true;
      _reverse = characters.reversed.toList();
    }
    return _reverse;
  }

  @override
  String toString() {
    return 'CharacterState(characters: $characters, reverse: $reverse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CharaterState &&
            (identical(other.characters, characters) ||
                const DeepCollectionEquality()
                    .equals(other.characters, characters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(characters);

  @override
  _$CharaterStateCopyWith<_CharaterState> get copyWith =>
      __$CharaterStateCopyWithImpl<_CharaterState>(this, _$identity);
}

abstract class _CharaterState implements CharacterState {
  factory _CharaterState({List<Character> characters}) = _$_CharaterState;

  @override
  List<Character> get characters;
  @override
  _$CharaterStateCopyWith<_CharaterState> get copyWith;
}
