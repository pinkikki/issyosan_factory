import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:issyosan_factory/domains/letter/paper.dart';

part 'letter_state.freezed.dart';

@freezed
abstract class LetterState with _$LetterState {
  // @lateを使用していない場合は、constつける
  factory LetterState({@Default(<Paper>[]) List<Paper> papers}) = _LetterState;

  // https://pub.dev/packages/freezed#late
  @late
  List<Paper> get reverse => papers.reversed.toList();
}
