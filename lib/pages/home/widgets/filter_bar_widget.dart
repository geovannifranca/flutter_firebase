import 'package:flutter/material.dart';
import 'package:myapp/pages/home/widgets/filter_card_widget.dart';
import 'package:myapp/pages/home/widgets/search_field_widgt.dart';

class FilterBarWidget extends StatelessWidget {
  const FilterBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SearchFieldWidgt(
      onSearch: (String searchedText) {},
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FilterCardWidget(
            label: 'Direct messege',
            notification: 23,
            isSelected: true,
          ),
          SizedBox(
            width: 8,
          ),
          FilterCardWidget(
            label: 'Group',
            notification: 5,
            isSelected: false,
          ),
        ],
      ),
    );
  }
}
