import 'package:flutter/rendering.dart';

abstract interface class ILocalizationService {
  Future<void> setLocale(Locale locale);

  Future<Locale> getLocale();
}
