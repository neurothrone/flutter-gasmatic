import '../../core/utils/utils.dart';
import '../../shared/models/models.dart';

abstract class DatabaseRepository {
  FutureEither<GasVolumeCalculation> insertGasVolumeDto(GasVolumeDto dto);

  FutureEither<List<GasVolumeCalculation>> fetchGasVolumeCalculations();

  FutureEitherVoid deleteGasVolumeCalculationById(int id);
}
