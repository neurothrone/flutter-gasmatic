import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_info/app_info.dart';
import 'database/database.dart';
import 'database/isar/isar.dart';
import 'env/env.dart';
import 'launcher/launcher.dart';

final appInfoServiceProvider = Provider<IAppInfoService>((ref) {
  return AppInfoService();
});

final databaseRepositoryProvider = Provider<IDatabaseRepository>((ref) {
  return IsarDatabaseRepository();
});

final databaseServiceProvider = Provider<IDatabaseService>((ref) {
  final IDatabaseRepository repository = ref.read(databaseRepositoryProvider);
  return DatabaseService(databaseRepository: repository);
});

final envServiceProvider = Provider.autoDispose<IEnvService>((ref) {
  return EnvService();
});

final launcherServiceProvider = Provider.autoDispose<ILauncherService>((ref) {
  final IEnvService envService = ref.read(envServiceProvider);
  return LauncherService(dotEnvService: envService);
});
