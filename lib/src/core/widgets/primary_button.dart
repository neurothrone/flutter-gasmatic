import 'package:flutter/material.dart';

import '../constants/constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.onPressed,
    required this.label,
    this.fontSize = 18.0,
    this.width,
    this.height,
    this.backgroundColor = AppConstants.darkerGold,
    this.foregroundColor = Colors.white,
    this.borderRadius = AppDimensions.borderRadius,
    this.useGradient = false,
    this.uniqueKey,
  });

  final VoidCallback? onPressed;
  final String label;
  final double fontSize;
  final double? width;
  final double? height;
  final Color backgroundColor;
  final Color foregroundColor;
  final double borderRadius;
  final bool useGradient;
  final Key? uniqueKey;

  @override
  Widget build(BuildContext context) {
    return useGradient
        ? Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              gradient: AppConstants.primaryGradient,
            ),
            width: width,
            height: height,
            child: ElevatedButton(
              onPressed: onPressed,
              key: uniqueKey,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: foregroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: fontSize,
                ),
              ),
            ),
          )
        : SizedBox(
            width: width,
            height: height,
            child: ElevatedButton(
              onPressed: onPressed,
              key: uniqueKey,
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
                foregroundColor: foregroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: fontSize,
                ),
              ),
            ),
          );
  }
}
