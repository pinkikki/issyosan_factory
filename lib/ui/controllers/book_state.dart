import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:issyosan_factory/domains/letter/paper.dart';

part 'book_state.freezed.dart';

@freezed
abstract class BookState with _$BookState {
  // @lateを使用していない場合は、constつける
  const factory BookState({@Default(<Paper>[]) List<Paper> papers}) =
      _BookState;
}
