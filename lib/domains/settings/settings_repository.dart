import 'package:issyosan_factory/domains/settings/settings.dart';

abstract class SettingsRepository {
  Future<Settings> get();
  Future<void> set(Settings settings);
}
