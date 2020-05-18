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
      Paper(id: 10, no: '11'),
      Paper(id: 11, no: '12', bgm: 'summer youth'),
      Paper(id: 11, no: '12_2'),
      Paper(id: 11, no: '12_3'),
      Paper(id: 11, no: '12_4'),
      Paper(id: 11, no: '12_5'),
      Paper(id: 11, no: '13', bgm: 'nanosaki'),
      Paper(id: 11, no: '13_2'),
      Paper(id: 11, no: '13_3'),
      Paper(id: 11, no: '14'),
      Paper(id: 11, no: '15'),
      Paper(id: 11, no: '16'),
      Paper(id: 11, no: '19', bgm: 'kunitori'),
      Paper(id: 11, no: '20'),
      Paper(id: 11, no: '21'),
      Paper(id: 11, no: '22'),
      Paper(id: 11, no: '23'),
      Paper(id: 11, no: '24'),
      Paper(id: 11, no: '25'),
      Paper(id: 11, no: '26'),
      Paper(id: 11, no: '26_2'),
      Paper(id: 11, no: '27'),
      Paper(id: 11, no: '28'),
      Paper(id: 11, no: '29'),
      Paper(id: 11, no: '30'),
    ];
  }

  @override
  Future<Paper> get(int id) async {
    final papers = await list();
    return papers.firstWhere((e) => e.id == id);
  }
}
