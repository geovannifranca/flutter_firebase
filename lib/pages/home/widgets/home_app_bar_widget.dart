import 'package:flutter/material.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({
    super.key,
    required this.onLogoutTAp,
    required this.userName,
    required this.unreadChatCount,
  });

  final VoidCallback onLogoutTAp;
  final String userName;
  final int unreadChatCount;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, $userName',
                style: theme.primaryTextTheme.bodyMedium,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'You received',
                style: theme.primaryTextTheme.titleLarge,
              ),
              Text(
                '$unreadChatCount messeges',
                style: theme.primaryTextTheme.headlineSmall,
              ),
            ],
          ),
        ),
        IconButton(
            onPressed: onLogoutTAp,
            icon: Icon(
              Icons.logout,
              color: theme.primaryIconTheme.color,
            )),
      ],
    );
  }
}
