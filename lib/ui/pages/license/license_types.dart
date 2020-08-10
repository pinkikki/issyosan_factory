import 'package:flutter/material.dart';
import 'package:issyosan_factory/locator.dart';
import 'package:issyosan_factory/services/navigation_service.dart';

class LicenseTypesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _navigationService = locator.get<NavigationService>();
    return Scaffold(
      appBar: AppBar(title: const Text('Licenses')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: const Text('LicenseRegistryから取得'),
            onPressed: () => _navigationService.navigateTo('custom_licenses'),
          ),
          RaisedButton(
            child: const Text('showLicensePageで表示'),
            onPressed: () => showLicensePage(context: context),
          ),
          RaisedButton(
            child: const Text('LicensePageを表示'),
            onPressed: () => _navigationService.navigateTo('original_licenses'),
          ),
          RaisedButton(
            child: const Text('AboutListTitleを表示'),
            onPressed: () =>
                _navigationService.navigateTo('about_tile_licenses'),
          ),
        ],
      )),
    );
  }
}
