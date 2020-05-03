import 'package:flutter/cupertino.dart';
import 'package:issyosan_factory/domains/settings/settings.dart';
import 'package:issyosan_factory/domains/settings/settings_repository.dart';
import 'package:issyosan_factory/locator.dart';

class SettingsViewModel extends ChangeNotifier {
  final SettingsRepository repo = locator.get<SettingsRepository>();

  bool _isNotifiable = false;

  bool get isNotifiable => _isNotifiable;

  Future<void> init() async {
    final settings = await repo.get();
    _isNotifiable = settings.isNotifiable;
    notifyListeners();
  }

  Future<void> change() async {
    _isNotifiable = !_isNotifiable;
    await repo.set(Settings(1, isNotifiable: _isNotifiable));
    notifyListeners();
  }
}
