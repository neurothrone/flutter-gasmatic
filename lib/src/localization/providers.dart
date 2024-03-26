import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/localization/localization.dart';
import '../services/preferences/preferences.dart';
import '../services/providers.dart';
import 'data/localization_controller.dart';
import 'data/localization_state.dart';

final localizationServiceProvider = Provider<ILocalizationService>((ref) {
  final IPreferencesService service = ref.read(preferencesServiceProvider);
  return LocalizationService(preferencesService: service);
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
