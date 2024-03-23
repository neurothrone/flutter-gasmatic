import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/localization/localization.dart';
import 'data/localization_controller.dart';
import 'data/localization_state.dart';

final localizationServiceProvider = Provider<ILocalizationService>((ref) {
  return LocalizationService();
});

final localizationStateProvider = StateNotifierProvider.autoDispose<
    LocalizationController, LocalizationState>((ref) {
  final ILocalizationService localizationService = ref.read(
    localizationServiceProvider,
  );
  final localizationController = LocalizationController(
    localizationService: localizationService,
  );
  localizationController.loadCurrentLocale();
  return localizationController;
});
