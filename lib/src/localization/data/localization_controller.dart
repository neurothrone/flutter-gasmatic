import 'package:flutter/rendering.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../services/localization/localization.dart';
import 'localization_state.dart';

class LocalizationController extends StateNotifier<LocalizationState> {
  LocalizationController({
    required ILocalizationService localizationService,
  })  : _localizationService = localizationService,
        super(LocalizationState.initial());

  final ILocalizationService _localizationService;

  final supportedLocales = const [
    Locale("en"),
    Locale("sv"),
  ];

  Future<void> loadCurrentLocale() async {
    final locale = await _localizationService.getLocale();
    state = state.copyWith(currentLocale: locale);
  }

  Future<void> changeLocaleTo(Locale newLocale) async {
    if (newLocale == state.currentLocale ||
        !supportedLocales.contains(newLocale)) {
      return;
    }

    await _localizationService.setLocale(newLocale);
    await loadCurrentLocale();
  }
}
