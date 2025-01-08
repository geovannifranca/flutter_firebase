import 'package:flutter/material.dart';
import 'package:myapp/widgets/user_image_widget.dart';

class ChatCardWidget extends StatelessWidget {
  const ChatCardWidget({
    super.key,
    required this.isOnline,
    required this.userImage,
    required this.userName,
    required this.messegeContent,
    required this.icon,
    required this.hour,
  });
  final bool isOnline;
  final String userImage;
  final String userName;
  final String messegeContent;
  final IconData icon;
  final String hour;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            UserImageWidget(
              radius: size.width * 0.075,
              url: userImage,
              isOnline: isOnline,
            )
          ],
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: theme.textTheme.titleLarge,
              ),
              Text(
                messegeContent,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text(hour.toString()),
            const SizedBox(width: 8.0),
            Icon(
              icon,
              color: theme.primaryColorLight,
            ),
          ],
        ),
      ],
    );
  }
}
