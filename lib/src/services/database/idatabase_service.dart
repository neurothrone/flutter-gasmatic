import '../../core/utils/utils.dart';
import '../../shared/models/models.dart';

abstract interface class IDatabaseService {
  FutureEither<GasVolumeCalculation> insert(GasVolumeDto dto);

  FutureEither<List<GasVolumeCalculation>> fetch();

  FutureEitherVoid deleteGasVolumeCalculationById(int id);

  FutureEitherVoid deleteAllGasData();

  FutureEitherVoid deleteAllData();
}
