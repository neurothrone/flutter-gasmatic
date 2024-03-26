import 'package:flutter/material.dart';

import '../preferences/preferences.dart';
import 'ilocalization_service.dart';

class LocalizationService implements ILocalizationService {
  LocalizationService({
    required IPreferencesService preferencesService,
  }) : _preferencesService = preferencesService;

  final IPreferencesService _preferencesService;

  @override
  Future<void> setLocale(Locale locale) async {
    await _preferencesService.setLocale(locale);
  }

  @override
  Future<Locale> getLocale() async {
    return await _preferencesService.getLocale();
  }
}
