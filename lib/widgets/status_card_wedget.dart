import 'package:flutter/material.dart';
import 'package:myapp/widgets/user_image_widget.dart';

class StatusCardWedget extends StatelessWidget {
  const StatusCardWedget(
      {super.key,
      required this.isOnline,
      required this.url,
      required this.userName});

  final bool isOnline;
  final String url;
  final String userName;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Column(
      children: [
        UserImageWidget(
          radius: size.width * 0.085,
          isOnline: isOnline,
          url: url,
        ),
        const SizedBox(height: 12),
        Text(
          userName,
          style: theme.primaryTextTheme.bodyMedium,
        )
      ],
    );
  }
}
