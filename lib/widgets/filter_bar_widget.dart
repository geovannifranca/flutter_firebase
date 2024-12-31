import 'package:flutter/material.dart';
import 'package:myapp/widgets/filter_card_widget.dart';

class FilterBarWidget extends StatelessWidget {
  const FilterBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            debugPrint('clicou!');
          },
        ),
        const FilterCardWidget(
          label: 'Direct messege',
          notification: 23,
          isSelected: true,
        ),
        const SizedBox(
          width: 8,
        ),
        const FilterCardWidget(
          label: 'Group',
          notification: 5,
          isSelected: false,
        ),
      ],
    );
  }
}
