import 'package:flutter/material.dart';

class DetailSection extends StatelessWidget {
  final String heading;
  final String description;
  const DetailSection({
    super.key,
    required this.heading,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        spacing: 10,
        children: [
          Expanded(
            child: Text(
              heading,
              style: theme.textTheme.displayMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Text(
              description,
              textAlign: TextAlign.right,
              style: theme.textTheme.headlineMedium,
            ),
          ),
        ],
      ),
    );
  }
}
