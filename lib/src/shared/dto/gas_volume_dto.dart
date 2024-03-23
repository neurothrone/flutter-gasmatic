import 'package:flutter/foundation.dart';

import '../domain/nominal_pipe_size.dart';

@immutable
class GasVolumeDto {
  const GasVolumeDto({
    required this.nominalPipeSize,
    required this.length,
    required this.pressure,
    required this.gasVolume,
  });

  final NominalPipeSize nominalPipeSize;
  final double length;
  final double pressure;
  final double gasVolume;
}
