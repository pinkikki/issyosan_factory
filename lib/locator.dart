import 'package:get_it/get_it.dart';
import 'package:issyosan_factory/services/navigation_service.dart';

import 'domains/baby/book_repository.dart';
import 'infra/book_client.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator
    ..registerLazySingleton<BookRepository>(() => BookClient())
    ..registerLazySingleton<NavigationService>(() => NavigationService());
}
