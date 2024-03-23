import '../../../../shared/models/gas_volume_calculation.dart';
import '../entities/gas_volume_calculation_isar.dart';

extension GasVolumeCalculationExtensions on GasVolumeCalculation {
  static GasVolumeCalculation fromIsarModel(
    GasVolumeCalculationIsar calculation,
  ) {
    return GasVolumeCalculation(
      id: calculation.id,
      nominalPipeSize: calculation.nominalPipeSize,
      length: calculation.length,
      pressure: calculation.pressure,
      gasVolume: calculation.gasVolume,
      calculatedAt: calculation.calculatedDate,
    );
  }
}
