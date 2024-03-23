import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CardButton extends StatelessWidget {
  const CardButton({
    Key? key,
    this.onPressed,
    required this.text,
    required this.icon,
    this.foregroundColor = AppConstants.lightBlue,
    this.backgroundColor = AppConstants.darkGold,
    this.elevation = AppDimensions.elevation,
    this.borderRadius = AppDimensions.borderRadius,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String text;
  final IconData icon;
  final Color foregroundColor;
  final Color backgroundColor;
  final double elevation;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      shadowColor: backgroundColor,
      // surfaceTintColor: backgroundColor,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(AppSizes.s10),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          disabledBackgroundColor: Colors.grey.shade800,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: foregroundColor,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.s10),
            Expanded(
              child: FittedBox(
                fit: BoxFit.fill,
                child: Icon(
                  icon,
                  color: foregroundColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
