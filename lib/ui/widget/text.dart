import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MenuText extends StatelessWidget {
  const MenuText(this.data, {Key key})
      : assert(
          data != null,
          'A non-null String must be provided to a Text widget.',
        ),
        super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(fontSize: 20, color: Colors.grey),
    );
  }
}

const TextStyle defaultBody1TextStyle = TextStyle(color: Colors.grey);
const TextStyle defaultSubheadTextStyle = TextStyle(color: Colors.black87);
