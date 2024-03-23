import 'dart:math';

import '../../../shared/domain/nominal_pipe_size.dart';

class GasVolumeService {
  final double _gasPressure = 1013.0;
  final int _roundToDecimals = 3;

  // dn values is expected to be in mm
  // first convert to meters then divide by 2 to get radius
  double _calculatePipeInnerRadius(int dn) => (dn / 1000.0) / 2.0;

  double calculateGasVolume({
    required NominalPipeSize nominalPipeSize,
    required double length,
    required double pressure,
  }) {
    final radius = _calculatePipeInnerRadius(nominalPipeSize.dn);

    final gasVolume = (pi * pow(radius, 2)) *
        length *
        ((pressure + _gasPressure) / _gasPressure);

    return double.tryParse(gasVolume.toStringAsFixed(_roundToDecimals)) ?? 0.0;
  }
}
