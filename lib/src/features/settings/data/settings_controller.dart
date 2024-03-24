import '../../../services/database/database.dart';

class SettingsController {
  SettingsController({
    required IDatabaseService databaseService,
  }) : _databaseService = databaseService;

  final IDatabaseService _databaseService;

  Future<bool> deleteAllData() async {
    final result = await _databaseService.deleteAllData();
    return result.fold(
      (failure) => false,
      (success) => true,
    );
  }
}
