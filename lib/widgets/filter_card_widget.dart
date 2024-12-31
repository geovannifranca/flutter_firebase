import 'package:flutter/material.dart';

class FilterCardWidget extends StatelessWidget {
  const FilterCardWidget({
    super.key,
    required this.label,
    required this.notification,
    required this.isSelected,
  });

  final bool isSelected;
  final String label;
  final int notification;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.lightBlue : Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(100),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Text(
              label,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: isSelected ? Colors.black : Colors.grey.shade700,
              ),
            ),
            const SizedBox(width: 8),
            if (notification > 0) ...{
              Badge.count(
                count: notification,
                textColor: isSelected ? Colors.white : Colors.black,
                backgroundColor: isSelected ? Colors.black : Colors.white,
              ),
            }
          ],
        ),
      ),
    );
  }
}
