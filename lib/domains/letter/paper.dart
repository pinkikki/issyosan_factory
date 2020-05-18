import 'package:flutter/cupertino.dart';

class Paper {
  Paper({
    @required this.id,
    @required this.no,
    this.bgm,
  });

  final int id;
  final String no;
  final String bgm;
}
