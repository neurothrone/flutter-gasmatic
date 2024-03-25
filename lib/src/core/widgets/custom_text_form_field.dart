import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.onChanged,
    this.onFieldSubmitted,
    this.onClear,
    this.controller,
    this.labelText,
    required this.hintText,
    this.keyboardType,
    this.maxLines,
    this.readOnly,
    this.primaryColor,
    this.filled = false,
    this.focusNode,
    this.textCapitalization = TextCapitalization.sentences,
    this.textInputAction,
    this.fieldKey,
    this.hasClearButton = true,
  });

  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final VoidCallback? onClear;
  final TextEditingController? controller;
  final String? labelText;
  final String hintText;
  final TextInputType? keyboardType;
  final int? maxLines;
  final bool? readOnly;
  final Color? primaryColor;
  final bool? filled;
  final FocusNode? focusNode;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final Key? fieldKey;
  final bool hasClearButton;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: fieldKey,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      controller: controller,
      focusNode: focusNode,
      textCapitalization: textCapitalization,
      textInputAction: textInputAction,
      readOnly: readOnly ?? false,
      maxLines: maxLines ?? 1,
      keyboardType: keyboardType ?? TextInputType.text,
      cursorColor: primaryColor ?? AppConstants.darkGold,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        suffixIcon: hasClearButton
            ? IconButton(
                onPressed: () {
                  controller?.clear();
                  onClear?.call();
                },
                icon: const Icon(
                  Icons.clear,
                  color: AppConstants.darkGold,
                ),
              )
            : null,
        filled: filled,
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 20.0,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
          // fontSize: 16.0,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelStyle: TextStyle(
          color: primaryColor ?? AppConstants.darkGold,
          fontSize: 20.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor ?? AppConstants.darkGold,
          ),
          borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
        ),
      ),
    );
  }
}
