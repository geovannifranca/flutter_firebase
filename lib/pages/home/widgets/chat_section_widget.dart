import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/pages/home/widgets/chat_card_widget.dart';

class ChatSectionWidget extends StatelessWidget {
  const ChatSectionWidget({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final date = DateTime.now().toUtc().subtract(const Duration(hours: 3));
    final datept = DateFormat('hh:mm aa').format(date).toLowerCase();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: 12),
        ListView.separated(
          itemCount: 4,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (_, __) => const SizedBox(height: 16),
          itemBuilder: (_, index) {
            return ChatCardWidget(
              userImage:
                  'https://img.freepik.com/psd-gratuitas/renderizacao-3d-do-personagem-avatar_23-2150611762.jpg?t=st=1733275241~exp=1733278841~hmac=959c39b3da8922d04a4158b6974384abba49faa58bbaa0d58472e3b135d880ab&w=740',
              userName: 'Geovanni França',
              messegeContent: 'Conteúdo $index',
              icon: Icons.check,
              isOnline: index.isOdd,
              hour: datept,
            );
          },
        ),
      ],
    );
  }
}
