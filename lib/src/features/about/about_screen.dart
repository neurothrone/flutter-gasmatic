import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../navigation/widgets/widgets.dart';
import 'ui/widgets/widgets.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
              AppSection(),
              SizedBox(height: AppSizes.s20),
              ContactSection(),
              SizedBox(height: AppSizes.s20),
              CreditsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
