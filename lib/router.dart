import 'package:flutter/material.dart';
import 'package:issyosan_factory/ui/views/login.dart';

class Router {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return _getPageRoute(
          routeName: settings.name,
          viewToShow: LoginView(),
        );
      default:
        return MaterialPageRoute<void>(
            builder: (_) => const Scaffold(
                  body: Center(child: Text('Not found')),
                ));
    }
  }

  static PageRoute _getPageRoute({String routeName, Widget viewToShow}) {
    return MaterialPageRoute<void>(
        settings: RouteSettings(
          name: routeName,
        ),
        builder: (_) => viewToShow);
  }
}
