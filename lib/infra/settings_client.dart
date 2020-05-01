import 'package:issyosan_factory/domains/settings/settings.dart';
import 'package:issyosan_factory/domains/settings/settings_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsClient implements SettingsRepository {
  @override
  Future<Settings> get() async {
    final prefs = await SharedPreferences.getInstance();
    final isNotifiable =
        prefs.containsKey('isNotifiable') && prefs.getBool('isNotifiable');
    return Settings(1, isNotifiable: isNotifiable);
  }

  @override
  Future<void> set(Settings settings) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isNotifiable', settings.isNotifiable);
  }
}
