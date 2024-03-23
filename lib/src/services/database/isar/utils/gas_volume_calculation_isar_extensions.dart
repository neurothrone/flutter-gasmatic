import '../../../../shared/dto/gas_volume_dto.dart';
import '../entities/entities.dart';

extension GasVolumeCalculationIsarExtensions on GasVolumeCalculationIsar {
  static GasVolumeCalculationIsar fromDto(
    GasVolumeDto dto,
  ) {
    return GasVolumeCalculationIsar()
      ..nominalPipeSize = dto.nominalPipeSize
      ..length = dto.length
      ..pressure = dto.pressure
      ..gasVolume = dto.gasVolume
      ..calculatedDate = DateTime.now();
  }
}
