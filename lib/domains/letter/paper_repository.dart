import 'paper.dart';

abstract class PaperRepository {
  Future<Paper> get(int id);

  Future<List<Paper>> list();
}
