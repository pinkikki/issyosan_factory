import 'package:flutter/material.dart';
import 'package:issyosan_factory/ui/views/auth/login.dart';
import 'package:issyosan_factory/ui/views/baby/detail.dart';
import 'package:issyosan_factory/ui/views/baby/list.dart';
import 'package:issyosan_factory/ui/views/baby/registration.dart';

class Router {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
        return _getPageRoute(
          routeName: settings.name,
          viewToShow: LoginView(),
        );
      case 'books':
        return _getPageRoute(
          routeName: settings.name,
          viewToShow: const BooksPage(),
        );
      case 'book_detail':
        return _getPageRoute(
          routeName: settings.name,
          viewToShow: const BookDetailPage(),
        );
      case 'book_registration':
        return _getPageRoute(
          routeName: settings.name,
          viewToShow: const BookRegistrationPage(),
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
