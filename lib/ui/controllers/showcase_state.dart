import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:issyosan_factory/domains/letter/paper.dart';

part 'showcase_state.freezed.dart';

@freezed
abstract class ShowcaseState with _$ShowcaseState {
  // @lateを使用していない場合は、constつける
  factory ShowcaseState({@Default(<Paper>[]) List<Paper> papers}) =
      _ShowcaseState;

  // https://pub.dev/packages/freezed#late
  @late
  List<Paper> get reverse => papers.reversed.toList();
}
