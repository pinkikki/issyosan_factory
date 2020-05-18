import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:issyosan_factory/services/navigation_service.dart';
import 'package:issyosan_factory/ui/widget/text.dart';

import '../../locator.dart';

class AppDrawer extends StatelessWidget {
  final _navigationService = locator.get<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: const Text(
              'Issyosan Factory',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          ),
          ListTile(
            title: const MenuText('Baby'),
            onTap: () {
              _navigationService.navigateTo('books');
            },
          ),
          ListTile(
            title: const MenuText('Letter'),
            onTap: () {
              _navigationService.navigateTo('letter_showcase');
            },
          ),
          ListTile(
            title: const MenuText('Settings'),
            onTap: () {
              _navigationService.navigateTo('settings');
            },
          ),
        ],
      ),
    );
  }
}
