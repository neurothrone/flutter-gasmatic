import 'package:flutter/foundation.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/utils.dart';
import '../../../services/database/database_repository.dart';
import '../../../shared/models/models.dart';

class GasVolumeCalculationListController
    extends StateNotifier<AsyncValue<List<GasVolumeCalculation>>> {
  GasVolumeCalculationListController({
    required DatabaseRepository databaseRepository,
  })  : _databaseRepository = databaseRepository,
        super(const AsyncValue.data([]));

  final DatabaseRepository _databaseRepository;

  Future<void> fetchCalculations() async {
    state = const AsyncLoading();

    final result = await _databaseRepository.fetchGasVolumeCalculations();

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
    final result = await _databaseRepository.insertGasVolumeDto(dto);

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
      if (kDebugMode) {
        debugPrint("❌ -> _addCalculation(), error: $e");
      }
      state = AsyncError(e, st);
    }
  }

  Future<void> deleteCalculation(GasVolumeCalculation calculation) async {
    final result = await _databaseRepository.deleteGasVolumeCalculationById(
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
