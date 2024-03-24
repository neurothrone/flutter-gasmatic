import 'package:fpdart/fpdart.dart';

import '../../core/utils/utils.dart';
import '../../shared/dto/gas_volume_dto.dart';
import '../../shared/models/gas_volume_calculation.dart';
import 'database.dart';
import 'isar/idatabase_repository.dart';
import 'isar/utils/gas_volume_calculation_extensions.dart';

class DatabaseService implements IDatabaseService {
  const DatabaseService({
    required IDatabaseRepository databaseRepository,
  }) : _repository = databaseRepository;

  final IDatabaseRepository _repository;

  @override
  FutureEither<GasVolumeCalculation> insert(GasVolumeDto dto) async {
    final response = await _repository.insert(dto);
    return response.fold(
      (failure) => Either.left(
        Failure(
          "Failed to insert Gas Volume Dto",
          StackTrace.current,
        ),
      ),
      (calculationIsar) {
        final calculation = GasVolumeCalculationExtensions.fromIsarModel(
          calculationIsar,
        );
        return Either.right(calculation);
      },
    );
  }

  @override
  FutureEither<List<GasVolumeCalculation>> fetch() async {
    final response = await _repository.fetch();
    return response.fold(
      (failure) => Either.left(
        Failure(
          "Failed to fetch Gas Volume Calculations",
          StackTrace.current,
        ),
      ),
      (calculationsIsar) {
        final List<GasVolumeCalculation> calculations = calculationsIsar
            .map((e) => GasVolumeCalculationExtensions.fromIsarModel(e))
            .toList();
        return Either.right(calculations);
      },
    );
  }

  @override
  FutureEitherVoid deleteGasVolumeCalculationById(int id) async {
    final response = await _repository.deleteGasVolumeCalculationById(id);
    return response.fold(
      (failure) => Either.left(
        Failure(
          "Failed to delete Gas Volume Calculation by id",
          StackTrace.current,
        ),
      ),
      (_) => Either.right(null),
    );
  }

  @override
  FutureEitherVoid deleteAllGasData() async {
    final response = await _repository.deleteAllGasData();
    return response.fold(
      (failure) => Either.left(
        Failure(
          "Failed to delete all Gas Volume data",
          StackTrace.current,
        ),
      ),
      (_) => Either.right(null),
    );
  }

  @override
  FutureEitherVoid deleteAllData() async {
    final response = await deleteAllGasData();
    return response.fold(
      (failure) => Either.left(
        Failure(
          "Failed to delete all data",
          StackTrace.current,
        ),
      ),
      (_) => Either.right(null),
    );
  }
}
