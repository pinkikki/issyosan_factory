import 'package:flutter/material.dart';
import 'package:issyosan_factory/router.dart';
import 'package:issyosan_factory/services/navigation_service.dart';
import 'package:issyosan_factory/theme.dart';

import 'locator.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Issyosan Factory',
      theme: buildTheme(),
      initialRoute: 'login',
      navigatorKey: locator.get<NavigationService>().navigationKey,
      onGenerateRoute: Router.generateRoute,
    );
  }
}
