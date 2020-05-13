import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:issyosan_factory/infra/settings_client.dart';
import 'package:issyosan_factory/run.dart';
import 'package:issyosan_factory/services/navigation_service.dart';

import 'domains/baby/book_repository.dart';
import 'domains/settings/settings_repository.dart';
import 'infra/book_client.dart';

GetIt locator = GetIt.instance;

void setupLocator({@required Environment environment}) {
  _default();

  switch (environment) {
    case Environment.aws:
      _aws();
      break;
    case Environment.local:
      _local();
      break;
  }
}

void _default() {
  locator
    ..registerLazySingleton<SettingsRepository>(() => SettingsClient())
    ..registerLazySingleton<NavigationService>(() => NavigationService());
}

void _aws() {
  // nop
}

void _local() {
  locator.registerLazySingleton<BookRepository>(() =>
      BookClient(endpoint: 'https://jsonbox.io/box_e68dcddaabcf9809d816'));
}
