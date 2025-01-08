import 'package:flutter/material.dart';

class ChatAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppbarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      title: Column(
        children: [
          Text(
            'Geovanni França',
            style: theme.primaryTextTheme.titleLarge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8.0),
              Text(
                'Online',
                style: theme.primaryTextTheme.bodyMedium,
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      actions: [
        IconButton(
          color: theme.primaryIconTheme.color,
          icon: const Icon(Icons.more_horiz),
          onPressed: () {},
        ),
      ],
    );
  }
}
