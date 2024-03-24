import '../../../services/database/database.dart';

class SettingsController {
  SettingsController({
    required DatabaseRepository databaseRepository,
  }) : _databaseRepository = databaseRepository;

  final DatabaseRepository _databaseRepository;

  Future<bool> deleteAllData() async {
    final result = await _databaseRepository.deleteAllData();
    return result.fold(
      (failure) => false,
      (success) => true,
    );
  }
}
