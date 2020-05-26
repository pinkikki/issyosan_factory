// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'book_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BookStateTearOff {
  const _$BookStateTearOff();

  _BookState call({List<Paper> papers = const <Paper>[]}) {
    return _BookState(
      papers: papers,
    );
  }
}

// ignore: unused_element
const $BookState = _$BookStateTearOff();

mixin _$BookState {
  List<Paper> get papers;

  $BookStateCopyWith<BookState> get copyWith;
}

abstract class $BookStateCopyWith<$Res> {
  factory $BookStateCopyWith(BookState value, $Res Function(BookState) then) =
      _$BookStateCopyWithImpl<$Res>;
  $Res call({List<Paper> papers});
}

class _$BookStateCopyWithImpl<$Res> implements $BookStateCopyWith<$Res> {
  _$BookStateCopyWithImpl(this._value, this._then);

  final BookState _value;
  // ignore: unused_field
  final $Res Function(BookState) _then;

  @override
  $Res call({
    Object papers = freezed,
  }) {
    return _then(_value.copyWith(
      papers: papers == freezed ? _value.papers : papers as List<Paper>,
    ));
  }
}

abstract class _$BookStateCopyWith<$Res> implements $BookStateCopyWith<$Res> {
  factory _$BookStateCopyWith(
          _BookState value, $Res Function(_BookState) then) =
      __$BookStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Paper> papers});
}

class __$BookStateCopyWithImpl<$Res> extends _$BookStateCopyWithImpl<$Res>
    implements _$BookStateCopyWith<$Res> {
  __$BookStateCopyWithImpl(_BookState _value, $Res Function(_BookState) _then)
      : super(_value, (v) => _then(v as _BookState));

  @override
  _BookState get _value => super._value as _BookState;

  @override
  $Res call({
    Object papers = freezed,
  }) {
    return _then(_BookState(
      papers: papers == freezed ? _value.papers : papers as List<Paper>,
    ));
  }
}

class _$_BookState implements _BookState {
  const _$_BookState({this.papers = const <Paper>[]}) : assert(papers != null);

  @JsonKey(defaultValue: const <Paper>[])
  @override
  final List<Paper> papers;

  @override
  String toString() {
    return 'BookState(papers: $papers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookState &&
            (identical(other.papers, papers) ||
                const DeepCollectionEquality().equals(other.papers, papers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(papers);

  @override
  _$BookStateCopyWith<_BookState> get copyWith =>
      __$BookStateCopyWithImpl<_BookState>(this, _$identity);
}

abstract class _BookState implements BookState {
  const factory _BookState({List<Paper> papers}) = _$_BookState;

  @override
  List<Paper> get papers;
  @override
  _$BookStateCopyWith<_BookState> get copyWith;
}
