import 'package:chat_application/domains/entities/message.dart';
import 'package:chat_application/src/chat/widgets/message_users_bubble.dart';
import 'package:chat_application/src/chat/widgets/my_message_bubble.dart';
import 'package:chat_application/src/providers/chat/chat_provider.dart';
import 'package:chat_application/src/shared/widgets/message_fieldbox.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final chatprovider = context.watch<ChatProvider>();


    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              controller: chatprovider.scrollController,
              itemCount: chatprovider.messages.length,
              itemBuilder: (context, index) {
                final message = chatprovider.messages[index];
                return (message.fromWho == FromWho.rafa) 
                  ? MessageUsersBubble( message: message )
                  : MyMessageBubble( message: message);
              },
            )),
            MessageFieldbox(
              onValue: (value)=>{
                chatprovider.sendMessage(value)
              },
      
            ),
          ],
        ),
      ),
    );
  }
}