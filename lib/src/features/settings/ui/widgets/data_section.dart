import 'package:flutter/material.dart';

import '../../../../shared/widgets/widgets.dart';

class DataSection extends StatelessWidget {
  const DataSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Data",
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(height: 1),
        CustomListTile(
          onPressed: () {},
          title: "Delete Your Data",
          subtitle: "This will take you to the next step",
          icon: Icons.folder_delete_rounded,
          iconColor: Colors.redAccent,
        ),
      ],
    );
  }
}
