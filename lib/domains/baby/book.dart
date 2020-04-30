import 'package:flutter/cupertino.dart';

class Book {
  Book(this.id, this.name, this.pageCount, this.released,
      {@required this.isPaid});

  int id;
  String name;
  int pageCount;
  bool isPaid;
  DateTime released;
}
