import '../../../shared/domain/domain.dart';

abstract interface class IGasVolumeService {
  double calculateGasVolume({
    required NominalPipeSize nominalPipeSize,
    required double length,
    required double pressure,
  });
}
