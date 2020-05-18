import 'package:flutter/material.dart';
import 'package:issyosan_factory/router.dart';
import 'package:issyosan_factory/services/navigation_service.dart';

import 'locator.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 242, 132, 130);
    return MaterialApp(
      title: 'Issyosan Factory',
      theme: ThemeData(
          textTheme: const TextTheme(),
          buttonTheme: ButtonThemeData(
              shape: StadiumBorder(side: BorderSide(color: Colors.orange)),
              buttonColor: Colors.white),
          primaryColor: primaryColor,
          buttonColor: primaryColor,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: primaryColor,
          )),
      darkTheme: ThemeData.dark(),
      initialRoute: 'login',
      navigatorKey: locator.get<NavigationService>().navigationKey,
      onGenerateRoute: Router.generateRoute,
    );
  }
}
