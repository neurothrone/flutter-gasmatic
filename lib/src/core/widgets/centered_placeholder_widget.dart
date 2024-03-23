import 'package:flutter/material.dart';

class CenteredPlaceholderWidget extends StatelessWidget {
  const CenteredPlaceholderWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text),
    );
  }
}
