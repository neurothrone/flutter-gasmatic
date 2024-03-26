import 'package:flutter/rendering.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../navigation/domain/domain.dart';
import 'ipreferences_service.dart';

enum PreferenceKey {
  screen,
  gasTab,
  effectTab,
  locale,
}

class PreferencesService implements IPreferencesService {
  Future<SharedPreferences> _getInstance() async {
    return await SharedPreferences.getInstance();
  }

  @override
  Future<Screen> getScreen() async {
    final prefs = await _getInstance();
    final index = prefs.getInt(PreferenceKey.screen.name) ?? 0;
    return Screen.fromIndex(index);
  }

  @override
  Future<void> setScreen(Screen screen) async {
    final prefs = await _getInstance();
    await prefs.setInt(PreferenceKey.screen.name, screen.index);
  }

  @override
  Future<ScreenTab> getGasTab() async {
    final prefs = await _getInstance();
    final index = prefs.getInt(PreferenceKey.gasTab.name) ?? 0;
    return ScreenTab.fromIndex(index);
  }

  @override
  Future<void> setGasTab(ScreenTab tab) async {
    final prefs = await _getInstance();
    await prefs.setInt(PreferenceKey.gasTab.name, tab.index);
  }

  @override
  Future<ScreenTab> getEffectTab() async {
    final prefs = await _getInstance();
    final index = prefs.getInt(PreferenceKey.effectTab.name) ?? 0;
    return ScreenTab.fromIndex(index);
  }

  @override
  Future<void> setEffectTab(ScreenTab tab) async {
    final prefs = await _getInstance();
    await prefs.setInt(PreferenceKey.effectTab.name, tab.index);
  }

  @override
  Future<Locale> getLocale() async {
    final prefs = await _getInstance();
    final localeString = prefs.getString(PreferenceKey.locale.name);
    return localeString != null
        ? Locale.fromSubtags(languageCode: localeString)
        : const Locale("en");
  }

  @override
  Future<void> setLocale(Locale locale) async {
    final prefs = await _getInstance();
    await prefs.setString(PreferenceKey.locale.name, locale.toLanguageTag());
  }
}
