import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../navigation/widgets/widgets.dart';
import 'ui/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.s20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PreferencesSection(),
              SizedBox(height: AppSizes.s20),
              GasVolumeSection(),
              SizedBox(height: AppSizes.s20),
              DataSection(),
            ],
          ),
        ),
      ),
    );
  }
}
