import 'package:chat_application/src/chat/widgets/app_bar.dart';
import 'package:chat_application/src/chat/widgets/chat_view.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBarChat(
        backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/141364183?v=4'),
      ),
      body: ChatView(),
    );
  }
}


