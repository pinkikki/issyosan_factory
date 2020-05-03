import 'package:flutter/material.dart';
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

  setupLocator(environment: environment);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => BabyViewModel()),
      ChangeNotifierProvider(create: (context) => SettingsViewModel())
    ],
    child: App(),
  ));
}
