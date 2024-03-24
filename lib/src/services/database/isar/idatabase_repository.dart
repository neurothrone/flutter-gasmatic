import '../../../core/utils/utils.dart';
import '../../../shared/models/models.dart';
import 'entities/entities.dart';

abstract interface class IDatabaseRepository {
  FutureEither<GasVolumeCalculationIsar> insert(GasVolumeDto dto);

  FutureEither<List<GasVolumeCalculationIsar>> fetch();

  FutureEitherVoid deleteGasVolumeCalculationById(int id);

  FutureEitherVoid deleteAllGasData();

  FutureEitherVoid deleteAllData();
}
