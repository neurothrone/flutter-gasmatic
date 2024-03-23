import 'package:flutter/foundation.dart';

import '../../../shared/domain/domain.dart';

@immutable
class GasVolumeFormState {
  const GasVolumeFormState({
    required this.selectedNps,
    required this.lengthString,
    required this.isCustomPressure,
    required this.selectedPressure,
    required this.pressureString,
    required this.isValid,
  });

  factory GasVolumeFormState.initial() {
    return GasVolumeFormState(
      selectedNps: NominalPipeSize.values.first,
      lengthString: "",
      isCustomPressure: false,
      selectedPressure: Pressure.values.first,
      pressureString: "",
      isValid: false,
    );
  }

  final NominalPipeSize selectedNps;
  final String lengthString;
  final bool isCustomPressure;
  final Pressure selectedPressure;
  final String pressureString;
  final bool isValid;

  GasVolumeFormState copyWith({
    NominalPipeSize? selectedNps,
    String? lengthString,
    bool? isCustomPressure,
    Pressure? selectedPressure,
    String? pressureString,
    bool? isValid,
  }) {
    return GasVolumeFormState(
      selectedNps: selectedNps ?? this.selectedNps,
      lengthString: lengthString ?? this.lengthString,
      isCustomPressure: isCustomPressure ?? this.isCustomPressure,
      selectedPressure: selectedPressure ?? this.selectedPressure,
      pressureString: pressureString ?? this.pressureString,
      isValid: isValid ?? this.isValid,
    );
  }
}
