import 'package:flutter/rendering.dart';

import '../../navigation/domain/domain.dart';

abstract interface class IPreferencesService {
  Future<Screen> getScreen();

  Future<void> setScreen(Screen screen);

  Future<ScreenTab> getGasTab();

  Future<void> setGasTab(ScreenTab tab);

  Future<Locale> getLocale();

  Future<void> setLocale(Locale locale);
}
