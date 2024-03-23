import 'package:flutter/foundation.dart';

import '../domain/domain.dart';

@immutable
class GasVolumeCalculation {
  const GasVolumeCalculation({
    required this.id,
    required this.nominalPipeSize,
    required this.length,
    required this.pressure,
    required this.gasVolume,
    required this.calculatedAt,
  });

  final int id;
  final NominalPipeSize nominalPipeSize;
  final double length;
  final double pressure;
  final double gasVolume;
  final DateTime calculatedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GasVolumeCalculation &&
          runtimeType == other.runtimeType &&
          id == other.id);

  @override
  int get hashCode =>
      id.hashCode ^
      nominalPipeSize.hashCode ^
      length.hashCode ^
      pressure.hashCode ^
      gasVolume.hashCode ^
      calculatedAt.hashCode;

  @override
  String toString() {
    return "GasVolumeCalculation{"
        " id: $id,"
        " nominalPipeSize: $nominalPipeSize,"
        " length: $length,"
        " pressure: $pressure,"
        " gasVolume: $gasVolume,"
        " calculatedAt: $calculatedAt,"
        "}";
  }
}
