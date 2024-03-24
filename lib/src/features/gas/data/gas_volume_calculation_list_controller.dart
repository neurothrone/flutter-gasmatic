import 'package:flutter/foundation.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/utils.dart';
import '../../../services/database/idatabase_service.dart';
import '../../../shared/models/models.dart';

class GasVolumeCalculationListController
    extends StateNotifier<AsyncValue<List<GasVolumeCalculation>>> {
  GasVolumeCalculationListController({
    required IDatabaseService databaseService,
  })  : _databaseService = databaseService,
        super(const AsyncValue.data([]));

  final IDatabaseService _databaseService;

  Future<void> fetchCalculations() async {
    state = const AsyncLoading();

    final result = await _databaseService.fetch();

    result.fold(
      (Failure failure) {
        state = AsyncError(failure.message, failure.stackTrace);

        if (kDebugMode) {
          debugPrint(
            "❌ -> controller fetchCalculations(), error: ${failure.message}",
          );
        }
      },
      (List<GasVolumeCalculation> calculations) {
        state = AsyncData(calculations);
      },
    );
  }

  Future<void> saveDto(GasVolumeDto dto) async {
    final result = await _databaseService.insert(dto);

    result.fold(
      (Failure failure) {
        if (kDebugMode) {
          debugPrint("❌ -> Failed to save data to database");
        }
      },
      (GasVolumeCalculation calculation) {
        _addCalculation(calculation);
      },
    );
  }

  Future<void> _addCalculation(GasVolumeCalculation calculation) async {
    final List<GasVolumeCalculation> currentCalculations = List.from(
      state.value ?? [],
    );

    try {
      currentCalculations.insert(0, calculation);
      state = AsyncData(currentCalculations);
    } catch (e, st) {
      state = AsyncError(e, st);

      if (kDebugMode) {
        debugPrint("❌ -> _addCalculation(), error: $e");
      }
    }
  }

  Future<void> deleteCalculation(GasVolumeCalculation calculation) async {
    final result = await _databaseService.deleteGasVolumeCalculationById(
      calculation.id,
    );

    result.fold(
      (Failure failure) {
        if (kDebugMode) {
          debugPrint(
            "❌ -> controller deleteCalculation(), error: ${failure.message}",
          );
        }
      },
      (_) => _deleteCalculationFromUI(calculation),
    );
  }

  Future<void> _deleteCalculationFromUI(
    GasVolumeCalculation calculation,
  ) async {
    final List<GasVolumeCalculation> currentCalculations = List.from(
      state.value ?? [],
    );
    currentCalculations.remove(calculation);
    state = AsyncData(currentCalculations);
  }
}
