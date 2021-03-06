import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:issyosan_factory/logger.dart';
import 'package:issyosan_factory/ui/controllers/book_controller.dart';
import 'package:issyosan_factory/ui/controllers/book_state.dart';
import 'package:issyosan_factory/ui/controllers/showcase_controller.dart';
import 'package:issyosan_factory/ui/controllers/showcase_state.dart';
import 'package:issyosan_factory/ui/models/baby_model.dart';
import 'package:issyosan_factory/ui/models/settings_model.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'locator.dart';

enum Environment {
  aws,
  local,
}

void run({@required Environment environment}) {
  // https: //stackoverflow.com/questions/57689492/flutter-unhandled-exception-servicesbinding-defaultbinarymessenger-was-accesse
  WidgetsFlutterBinding.ensureInitialized();

  setupLogger();
  setupLocator(environment: environment);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => BabyViewModel()),
      StateNotifierProvider<ShowcaseController, ShowcaseState>(
          create: (context) => ShowcaseController()),
      StateNotifierProvider<BookController, BookState>(
          create: (context) => BookController()),
      ChangeNotifierProvider(create: (context) => SettingsViewModel())
    ],
    child: App(),
  ));
}
