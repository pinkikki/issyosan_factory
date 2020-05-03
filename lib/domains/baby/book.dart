import 'package:flutter/cupertino.dart';

class Book {
  Book(
      {@required this.id,
      @required this.name,
      @required this.pageCount,
      @required this.released,
      @required this.isPaid});

  final String id;
  final String name;
  final int pageCount;
  final DateTime released;
  final bool isPaid;
}
