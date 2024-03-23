import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'ilocalization_service.dart';

class LocalizationService implements ILocalizationService {
  static const String _selectedLocaleKey = "selected_locale";

  @override
  Future<void> setLocale(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_selectedLocaleKey, locale.toLanguageTag());
  }

  @override
  Future<Locale> getLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final localeString = prefs.getString(_selectedLocaleKey);
    return localeString != null
        ? Locale.fromSubtags(languageCode: localeString)
        : const Locale("en");
  }
}
