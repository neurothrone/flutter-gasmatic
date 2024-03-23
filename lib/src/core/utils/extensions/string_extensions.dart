/// Extension on [String] to mark strings needing localization.
extension StringLocalization on String {
  /// Marks a string for future localization.
  ///
  /// Usage:
  /// ```
  /// "Hello, World!".toLocalize;
  /// ```
  @Deprecated("Don't forget to localize this string.")
  String get toLocalize => this;
}

extension Capitalize on String {
  String get capitalized =>
      isEmpty ? "" : replaceRange(0, 1, this[0].toUpperCase());
}

extension ConvertToDouble on String {
  double? get toDoubleOrNull {
    if (isEmpty) return null;

    return double.tryParse(this);
  }
}

extension Validation on String {
  bool get isNumber => toDoubleOrNull != null;

  bool get isNotNumber => toDoubleOrNull == null;
}
