import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../shared/widgets/widgets.dart';

class DataSection extends StatelessWidget {
  const DataSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context).data_header,
          style: const TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(height: 1),
        CustomListTile(
          onPressed: () {},
          title: AppLocalizations.of(context).delete_data_title,
          subtitle: AppLocalizations.of(context).delete_data_subtitle,
          icon: Icons.folder_delete_rounded,
          iconColor: Colors.redAccent,
        ),
      ],
    );
  }
}
