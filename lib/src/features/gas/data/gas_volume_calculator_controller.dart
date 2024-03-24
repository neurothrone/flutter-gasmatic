import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/domain/domain.dart';
import '../../../shared/models/models.dart';
import 'gas_volume_calculation_list_controller.dart';
import 'igas_volume_service.dart';

class GasVolumeCalculatorController extends StateNotifier<double> {
  GasVolumeCalculatorController({
    required IGasVolumeService gasVolumeService,
    required GasVolumeCalculationListController calculationsController,
  })  : _gasVolumeService = gasVolumeService,
        _calculationsController = calculationsController,
        super(0.0);

  final IGasVolumeService _gasVolumeService;
  final GasVolumeCalculationListController _calculationsController;

  void calculateGasVolume({
    required NominalPipeSize nominalPipeSize,
    required double length,
    required double pressure,
  }) {
    final gasVolume = _gasVolumeService.calculateGasVolume(
      nominalPipeSize: nominalPipeSize,
      length: length,
      pressure: pressure,
    );

    state = gasVolume;

    _saveDataToDatabase(
      nominalPipeSize: nominalPipeSize,
      length: length,
      pressure: pressure,
      gasVolume: gasVolume,
    );
  }

  Future<void> _saveDataToDatabase({
    required NominalPipeSize nominalPipeSize,
    required double length,
    required double pressure,
    required double gasVolume,
  }) async {
    final dto = GasVolumeDto(
      nominalPipeSize: nominalPipeSize,
      length: length,
      pressure: pressure,
      gasVolume: gasVolume,
    );

    _calculationsController.saveDto(dto);
  }
}
