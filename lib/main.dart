import 'package:flutter/material.dart';
import 'package:issyosan_factory/router.dart';
import 'package:issyosan_factory/ui/widget/text.dart';

import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schedule Application',
      theme: ThemeData(
        textTheme: TextTheme(
            body1: defaultBody1TextStyle, subhead: defaultSubheadTextStyle),
        buttonTheme: ButtonThemeData(
            shape: StadiumBorder(side: BorderSide(color: Colors.orange)),
            buttonColor: Colors.white),
        primarySwatch: Colors.blueGrey,
      ),
      darkTheme: ThemeData.dark(),
      initialRoute: '/login',
      onGenerateRoute: Router.generateRoute,
    );
  }
}
