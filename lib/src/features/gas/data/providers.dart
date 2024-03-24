import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../services/database/database.dart';
import '../../../services/providers.dart';
import '../../../shared/models/models.dart';
import 'gas_volume_calculation_list_controller.dart';
import 'gas_volume_calculator_controller.dart';
import 'gas_volume_form_controller.dart';
import 'gas_volume_form_state.dart';
import 'gas_volume_service.dart';
import 'igas_volume_service.dart';

final gasVolumeFormProvider = StateNotifierProvider.autoDispose<
    GasVolumeFormController, GasVolumeFormState>((ref) {
  final GasVolumeCalculatorController calculator = ref.read(
    gasVolumeCalculatorProvider.notifier,
  );
  return GasVolumeFormController(gasVolumeController: calculator);
});

final gasVolumeServiceProvider = Provider.autoDispose<IGasVolumeService>((ref) {
  return GasVolumeService();
});

final gasVolumeCalculatorProvider =
    StateNotifierProvider.autoDispose<GasVolumeCalculatorController, double>(
        (ref) {
  final IGasVolumeService service = ref.read(gasVolumeServiceProvider);
  final GasVolumeCalculationListController calculationsController = ref.read(
    gasVolumeCalculationListProvider.notifier,
  );

  return GasVolumeCalculatorController(
    gasVolumeService: service,
    calculationsController: calculationsController,
  );
});

final gasVolumeCalculationListProvider = StateNotifierProvider.autoDispose<
    GasVolumeCalculationListController,
    AsyncValue<List<GasVolumeCalculation>>>((ref) {
  final IDatabaseService service = ref.read(databaseServiceProvider);
  final controller = GasVolumeCalculationListController(
    databaseService: service,
  );
  controller.fetchCalculations();
  return controller;
});
