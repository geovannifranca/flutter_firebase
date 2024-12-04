import 'package:flutter/material.dart';

class UserImageWidget extends StatelessWidget {
  const UserImageWidget(
      {super.key,
      required this.radius,
      required this.url,
      required this.isOnline});

  final double radius;
  final String url;
  final bool isOnline;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: radius,
            foregroundImage: NetworkImage(url),
          ),
        ),
        Positioned(
          bottom: -2,
          right: -2,
          child: Container(
            decoration: BoxDecoration(
              color: isOnline ? Colors.green : Colors.orange,
              shape: BoxShape.circle,
            ),
            child: Icon(
              isOnline ? Icons.check : Icons.add,
            ),
          ),
        ),
      ],
    );
  }
}
