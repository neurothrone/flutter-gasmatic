import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../services/providers.dart';
import '../../../shared/models/models.dart';
import 'gas_volume_calculation_list_controller.dart';
import 'gas_volume_calculator_controller.dart';
import 'gas_volume_form_controller.dart';
import 'gas_volume_form_state.dart';
import 'gas_volume_service.dart';

final gasVolumeFormProvider = StateNotifierProvider.autoDispose<
    GasVolumeFormController, GasVolumeFormState>((ref) {
  final GasVolumeCalculatorController calculator = ref.read(
    gasVolumeCalculatorProvider.notifier,
  );
  return GasVolumeFormController(gasVolumeController: calculator);
});

final gasVolumeCalculatorProvider =
    StateNotifierProvider.autoDispose<GasVolumeCalculatorController, double>(
        (ref) {
  GasVolumeCalculationListController calculationsController = ref.read(
    gasVolumeCalculationListProvider.notifier,
  );

  return GasVolumeCalculatorController(
    gasVolumeService: GasVolumeService(),
    calculationsController: calculationsController,
  );
});

final gasVolumeCalculationListProvider = StateNotifierProvider.autoDispose<
    GasVolumeCalculationListController,
    AsyncValue<List<GasVolumeCalculation>>>((ref) {
  final databaseRepository = ref.read(databaseRepositoryProvider);
  final controller = GasVolumeCalculationListController(
    databaseRepository: databaseRepository,
  );
  controller.fetchCalculations();
  return controller;
});
