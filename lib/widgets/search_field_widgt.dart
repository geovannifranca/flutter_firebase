import 'package:flutter/material.dart';

class SearchFieldWidgt extends StatefulWidget {
  const SearchFieldWidgt({
    super.key,
    required this.child,
    required this.onSearch,
  });

  final Widget child;
  final void Function(String searchedText) onSearch;

  @override
  State<SearchFieldWidgt> createState() => _SearchFieldWidgtState();
}

class _SearchFieldWidgtState extends State<SearchFieldWidgt> {
  final controller = TextEditingController();
  final focusNode = FocusNode();
  bool showTextField = false;

  void toggleShow() {
    if (showTextField && controller.text.isNotEmpty) {
      return widget.onSearch(controller.text);
    }

    setState(() {
      showTextField = !showTextField;
    });
    if (showTextField) {
      focusNode.requestFocus();
    }
  }

  void clear() {
    controller.clear();
    toggleShow();

    FocusScope.of(context).requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: toggleShow,
        ),
        if (!showTextField)
          widget.child
        else
          Expanded(
            child: TextField(
              controller: controller,
              focusNode: focusNode,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                  isDense: true,
                  hintText: ' pesquisar...',
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(8.0),
                  suffixIcon: InkWell(
                    onTap: clear,
                    child: const Icon(Icons.close),
                  )),
            ),
          ),
      ],
    );
  }
}
