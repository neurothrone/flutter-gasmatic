import 'package:flutter/material.dart';

@immutable
class LocalizationState {
  const LocalizationState({
    required this.currentLocale,
  });

  factory LocalizationState.initial() {
    return const LocalizationState(currentLocale: Locale("en"));
  }

  final Locale currentLocale;

  LocalizationState copyWith({
    Locale? currentLocale,
  }) {
    return LocalizationState(
      currentLocale: currentLocale ?? this.currentLocale,
    );
  }
}
