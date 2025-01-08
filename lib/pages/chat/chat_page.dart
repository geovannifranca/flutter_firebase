import 'package:flutter/material.dart';
import 'package:myapp/pages/chat/widgets/chat_appbar_widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ChatAppbarWidget(),
      body: Placeholder(),
    );
  }
}
