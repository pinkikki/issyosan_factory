import 'package:flutter/cupertino.dart';
import 'package:issyosan_factory/domains/letter/paper.dart';
import 'package:issyosan_factory/domains/letter/paper_repository.dart';
import 'package:logging/logging.dart';

@immutable
class PaperClient implements PaperRepository {
  final Logger logger = Logger('PaperClient');

  @override
  Future<List<Paper>> list() async {
    return [
      Paper(id: 1, no: '1'),
      Paper(id: 2, no: '2'),
      Paper(id: 3, no: '3'),
      Paper(id: 4, no: '4'),
      Paper(id: 5, no: '5'),
      Paper(id: 6, no: '6'),
      Paper(id: 7, no: '7'),
      Paper(id: 8, no: '8'),
      Paper(id: 9, no: '9'),
      Paper(id: 10, no: '10'),
      Paper(id: 11, no: '10-2', bgm: 'summer youth'),
    ];
  }

  @override
  Future<Paper> get(int id) async {
    final papers = await list();
    return papers.firstWhere((e) => e.id == id);
  }
}
