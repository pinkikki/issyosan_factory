// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'showcase_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ShowcaseStateTearOff {
  const _$ShowcaseStateTearOff();

  _ShowcaseState call({List<Paper> papers = const <Paper>[]}) {
    return _ShowcaseState(
      papers: papers,
    );
  }
}

// ignore: unused_element
const $ShowcaseState = _$ShowcaseStateTearOff();

mixin _$ShowcaseState {
  List<Paper> get papers;

  $ShowcaseStateCopyWith<ShowcaseState> get copyWith;
}

abstract class $ShowcaseStateCopyWith<$Res> {
  factory $ShowcaseStateCopyWith(
          ShowcaseState value, $Res Function(ShowcaseState) then) =
      _$ShowcaseStateCopyWithImpl<$Res>;
  $Res call({List<Paper> papers});
}

class _$ShowcaseStateCopyWithImpl<$Res>
    implements $ShowcaseStateCopyWith<$Res> {
  _$ShowcaseStateCopyWithImpl(this._value, this._then);

  final ShowcaseState _value;
  // ignore: unused_field
  final $Res Function(ShowcaseState) _then;

  @override
  $Res call({
    Object papers = freezed,
  }) {
    return _then(_value.copyWith(
      papers: papers == freezed ? _value.papers : papers as List<Paper>,
    ));
  }
}

abstract class _$ShowcaseStateCopyWith<$Res>
    implements $ShowcaseStateCopyWith<$Res> {
  factory _$ShowcaseStateCopyWith(
          _ShowcaseState value, $Res Function(_ShowcaseState) then) =
      __$ShowcaseStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Paper> papers});
}

class __$ShowcaseStateCopyWithImpl<$Res>
    extends _$ShowcaseStateCopyWithImpl<$Res>
    implements _$ShowcaseStateCopyWith<$Res> {
  __$ShowcaseStateCopyWithImpl(
      _ShowcaseState _value, $Res Function(_ShowcaseState) _then)
      : super(_value, (v) => _then(v as _ShowcaseState));

  @override
  _ShowcaseState get _value => super._value as _ShowcaseState;

  @override
  $Res call({
    Object papers = freezed,
  }) {
    return _then(_ShowcaseState(
      papers: papers == freezed ? _value.papers : papers as List<Paper>,
    ));
  }
}

class _$_ShowcaseState implements _ShowcaseState {
  _$_ShowcaseState({this.papers = const <Paper>[]}) : assert(papers != null);

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
    return 'ShowcaseState(papers: $papers, reverse: $reverse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowcaseState &&
            (identical(other.papers, papers) ||
                const DeepCollectionEquality().equals(other.papers, papers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(papers);

  @override
  _$ShowcaseStateCopyWith<_ShowcaseState> get copyWith =>
      __$ShowcaseStateCopyWithImpl<_ShowcaseState>(this, _$identity);
}

abstract class _ShowcaseState implements ShowcaseState {
  factory _ShowcaseState({List<Paper> papers}) = _$_ShowcaseState;

  @override
  List<Paper> get papers;
  @override
  _$ShowcaseStateCopyWith<_ShowcaseState> get copyWith;
}
