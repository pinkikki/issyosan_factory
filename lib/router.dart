import 'package:flutter/material.dart';
import 'package:issyosan_factory/ui/pages/auth/login_page.dart';
import 'package:issyosan_factory/ui/pages/baby/detail_page.dart';
import 'package:issyosan_factory/ui/pages/baby/list_page.dart';
import 'package:issyosan_factory/ui/pages/baby/registration_page.dart';
import 'package:issyosan_factory/ui/pages/introduction/torokkorio.dart';
import 'package:issyosan_factory/ui/pages/letter/book_page.dart';
import 'package:issyosan_factory/ui/pages/letter/showcase_page.dart';
import 'package:issyosan_factory/ui/pages/license/about_tile_license_page.dart';
import 'package:issyosan_factory/ui/pages/license/custom_license_page.dart';
import 'package:issyosan_factory/ui/pages/license/license_types.dart';
import 'package:issyosan_factory/ui/pages/settings/settings_page.dart';

class Router {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
        return _getPageRoute(
          routeName: settings.name,
          viewToShow: LoginPage(),
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
      case 'letter_showcase':
        return _getPageRoute(
          routeName: settings.name,
          viewToShow: const ShowcasePage(),
        );
      case 'letter_book':
        return _getPageRoute(
          routeName: settings.name,
          viewToShow: BookPage.wrapped(),
        );
      case 'torokkorio':
        return _getPageRoute(
          routeName: settings.name,
          viewToShow: const TorokkorioPage(),
        );
      case 'settings':
        return _getPageRoute(
          routeName: settings.name,
          viewToShow: const SettingsPage(),
        );
      case 'license_types':
        return _getPageRoute(
          routeName: settings.name,
          viewToShow: LicenseTypesPage(),
        );
      case 'custom_licenses':
        return _getPageRoute(
          routeName: settings.name,
          viewToShow: const CustomLicensePage(),
        );
      case 'original_licenses':
        return _getPageRoute(
          routeName: settings.name,
          viewToShow: const LicensePage(),
        );
      case 'about_tile_licenses':
        return _getPageRoute(
          routeName: settings.name,
          viewToShow: const AboutTileLicensePage(),
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
