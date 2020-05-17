import 'package:flutter/cupertino.dart';

class Character {
  Character({
    @required this.id,
    @required this.name,
    @required this.isMob,
  });

  final int id;
  final String name;
  final bool isMob;
}
