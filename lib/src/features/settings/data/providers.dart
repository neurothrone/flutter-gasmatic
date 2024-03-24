import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../services/database/database.dart';
import '../../../services/providers.dart';
import 'settings_controller.dart';

final settingsControllerProvider = Provider<SettingsController>((ref) {
  final DatabaseRepository repository = ref.read(databaseRepositoryProvider);
  return SettingsController(databaseRepository: repository);
});
