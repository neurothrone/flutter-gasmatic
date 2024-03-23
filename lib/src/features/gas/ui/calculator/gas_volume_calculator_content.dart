import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import 'widgets/widgets.dart';

class GasVolumeCalculatorContent extends StatelessWidget {
  const GasVolumeCalculatorContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: Platform.isIOS
          ? ScrollViewKeyboardDismissBehavior.onDrag
          : ScrollViewKeyboardDismissBehavior.manual,
      padding: const EdgeInsets.all(AppSizes.s20),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.orientationOf(context) == Orientation.portrait
              ? AppSizes.s20
              : AppSizes.s40,
        ),
        child: const Column(
          children: [
            GasVolumeCalculatorForm(),
            SizedBox(height: AppSizes.s20),
            GasVolumeResult(),
            SizedBox(height: AppSizes.s40),
          ],
        ),
      ),
    );
  }
}
