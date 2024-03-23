import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/utils.dart';
import '../../../shared/domain/domain.dart';
import 'gas_volume_calculator_controller.dart';
import 'gas_volume_form_state.dart';

class GasVolumeFormController extends StateNotifier<GasVolumeFormState> {
  GasVolumeFormController({
    required GasVolumeCalculatorController gasVolumeController,
  })  : _gasVolumeCalculator = gasVolumeController,
        super(GasVolumeFormState.initial());

  final GasVolumeCalculatorController _gasVolumeCalculator;

  void changeLengthString(String lengthString) {
    state = state.copyWith(lengthString: lengthString);
    validateForm();
  }

  void changeSelectedNps(NominalPipeSize selectedNps) {
    state = state.copyWith(selectedNps: selectedNps);
    validateForm();
  }

  void changeSelectedPressure(Pressure selectedPressure) {
    state = state.copyWith(selectedPressure: selectedPressure);
    validateForm();
  }

  void changePressureString(String pressureString) {
    state = state.copyWith(pressureString: pressureString);
    validateForm();
  }

  void toggleIsCustomPressure() {
    state = state.copyWith(isCustomPressure: !state.isCustomPressure);
    validateForm();
  }

  void validateForm() {
    final List<bool> validations = [];

    validations.addAll([
      state.lengthString.isNotEmpty,
      state.lengthString.isNumber,
    ]);

    if (state.isCustomPressure) {
      validations.addAll([
        state.pressureString.isNotEmpty,
        state.pressureString.isNumber,
      ]);
    }

    final isFormValid = validations.every((isValid) => isValid);

    state = state.copyWith(isValid: isFormValid);
  }

  void calculate() {
    final double? length = state.lengthString.toDoubleOrNull;

    double? pressure;
    if (state.isCustomPressure) {
      pressure = state.pressureString.toDoubleOrNull;
    } else {
      pressure = state.selectedPressure.value;
    }

    if (length == null || pressure == null) return;

    _gasVolumeCalculator.calculateGasVolume(
      nominalPipeSize: state.selectedNps,
      length: length,
      pressure: pressure,
    );
  }
}
