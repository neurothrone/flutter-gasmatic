import 'package:fpdart/fpdart.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/utils/utils.dart';
import '../../../shared/models/models.dart';
import '../database_repository.dart';
import 'entities/entities.dart';
import 'utils/utils.dart';

class IsarDatabaseRepository implements DatabaseRepository {
  IsarDatabaseRepository() {
    db = openDatabase();
  }

  late Future<Isar> db;

  Future<Isar> openDatabase() async {
    if (Isar.instanceNames.isEmpty) {
      final directory = await getApplicationDocumentsDirectory();
      return await Isar.open(
        [
          GasVolumeCalculationIsarSchema,
        ],
        inspector: false,
        directory: directory.path,
      );
    }

    return Future.value(
      Isar.getInstance(),
    );
  }

  @override
  FutureEither<GasVolumeCalculation> insertGasVolumeDto(
      GasVolumeDto dto) async {
    final calculationIsar = GasVolumeCalculationIsarExtensions.fromDto(dto);

    try {
      final Isar isar = await db;
      await isar.writeTxn(() async {
        isar.gasVolumeCalculationIsars.put(calculationIsar);
      });
    } catch (e, st) {
      return Future.value(
        Either.left(
          Failure(e.toString(), st),
        ),
      );
    }

    final calculation = GasVolumeCalculationExtensions.fromIsarModel(
      calculationIsar,
    );

    return Either.right(calculation);
  }

  @override
  FutureEither<List<GasVolumeCalculation>> fetchGasVolumeCalculations() async {
    final List<GasVolumeCalculationIsar> calculationsIsar;

    try {
      final isar = await db;
      calculationsIsar = await isar.gasVolumeCalculationIsars
          .where()
          .sortByCalculatedDateDesc()
          .findAll();
    } catch (e, st) {
      return Future.value(
        Either.left(
          Failure(e.toString(), st),
        ),
      );
    }

    final List<GasVolumeCalculation> calculations = calculationsIsar
        .map((e) => GasVolumeCalculationExtensions.fromIsarModel(e))
        .toList();
    return Either.right(calculations);
  }

  @override
  FutureEitherVoid deleteGasVolumeCalculationById(int id) async {
    try {
      final Isar isar = await db;
      await isar.writeTxn(() async {
        await isar.gasVolumeCalculationIsars.delete(id);
      });

      return Either.right(null);
    } catch (e, st) {
      return Future.value(
        Either.left(
          Failure(e.toString(), st),
        ),
      );
    }
  }
}
