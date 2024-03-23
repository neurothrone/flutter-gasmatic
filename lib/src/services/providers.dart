import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'database/database.dart';
import 'env/env.dart';
import 'launcher/launcher.dart';

final databaseRepositoryProvider = Provider<DatabaseRepository>((ref) {
  return IsarDatabaseRepository();
});

final launcherServiceProvider = Provider.autoDispose<ILauncherService>((ref) {
  final IEnvService envService = ref.read(envServiceProvider);
  return LauncherService(dotEnvService: envService);
});

final envServiceProvider = Provider.autoDispose<IEnvService>((ref) {
  return EnvService();
});
