import 'package:flutter/material.dart';
import 'package:myapp/widgets/status_card_wedget.dart';

class ContactsListWidget extends StatelessWidget {
  const ContactsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            style: theme.primaryTextTheme.bodyMedium,
            children: [
              TextSpan(
                text: 'Contact ',
                style: theme.primaryTextTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const TextSpan(
                text: 'List',
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            separatorBuilder: (_, __) => const SizedBox(width: 16),
            itemBuilder: (_, index) {
              return StatusCardWedget(
                  isOnline: index.isEven,
                  url:
                      'https://img.freepik.com/psd-gratuitas/renderizacao-3d-do-personagem-avatar_23-2150611762.jpg?t=st=1733275241~exp=1733278841~hmac=959c39b3da8922d04a4158b6974384abba49faa58bbaa0d58472e3b135d880ab&w=740',
                  userName: "wagner");
            },
          ),
        ),
      ],
    );
  }
}
