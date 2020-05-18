// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'letter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LetterStateTearOff {
  const _$LetterStateTearOff();

  _LetterState call({List<Paper> papers = const <Paper>[]}) {
    return _LetterState(
      papers: papers,
    );
  }
}

// ignore: unused_element
const $LetterState = _$LetterStateTearOff();

mixin _$LetterState {
  List<Paper> get papers;

  $LetterStateCopyWith<LetterState> get copyWith;
}

abstract class $LetterStateCopyWith<$Res> {
  factory $LetterStateCopyWith(
          LetterState value, $Res Function(LetterState) then) =
      _$LetterStateCopyWithImpl<$Res>;
  $Res call({List<Paper> papers});
}

class _$LetterStateCopyWithImpl<$Res> implements $LetterStateCopyWith<$Res> {
  _$LetterStateCopyWithImpl(this._value, this._then);

  final LetterState _value;
  // ignore: unused_field
  final $Res Function(LetterState) _then;

  @override
  $Res call({
    Object papers = freezed,
  }) {
    return _then(_value.copyWith(
      papers: papers == freezed ? _value.papers : papers as List<Paper>,
    ));
  }
}

abstract class _$LetterStateCopyWith<$Res>
    implements $LetterStateCopyWith<$Res> {
  factory _$LetterStateCopyWith(
          _LetterState value, $Res Function(_LetterState) then) =
      __$LetterStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Paper> papers});
}

class __$LetterStateCopyWithImpl<$Res> extends _$LetterStateCopyWithImpl<$Res>
    implements _$LetterStateCopyWith<$Res> {
  __$LetterStateCopyWithImpl(
      _LetterState _value, $Res Function(_LetterState) _then)
      : super(_value, (v) => _then(v as _LetterState));

  @override
  _LetterState get _value => super._value as _LetterState;

  @override
  $Res call({
    Object papers = freezed,
  }) {
    return _then(_LetterState(
      papers: papers == freezed ? _value.papers : papers as List<Paper>,
    ));
  }
}

class _$_LetterState implements _LetterState {
  _$_LetterState({this.papers = const <Paper>[]}) : assert(papers != null);

  @JsonKey(defaultValue: const <Paper>[])
  @override
  final List<Paper> papers;

  bool _didreverse = false;
  List<Paper> _reverse;

  @override
  List<Paper> get reverse {
    if (_didreverse == false) {
      _didreverse = true;
      _reverse = papers.reversed.toList();
    }
    return _reverse;
  }

  @override
  String toString() {
    return 'LetterState(papers: $papers, reverse: $reverse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LetterState &&
            (identical(other.papers, papers) ||
                const DeepCollectionEquality().equals(other.papers, papers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(papers);

  @override
  _$LetterStateCopyWith<_LetterState> get copyWith =>
      __$LetterStateCopyWithImpl<_LetterState>(this, _$identity);
}

abstract class _LetterState implements LetterState {
  factory _LetterState({List<Paper> papers}) = _$_LetterState;

  @override
  List<Paper> get papers;
  @override
  _$LetterStateCopyWith<_LetterState> get copyWith;
}
