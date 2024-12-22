import 'package:chat_application/domains/entities/message.dart';
import 'package:chat_application/src/chat/widgets/image_bubble.dart';
import 'package:flutter/material.dart';

class MessageUsersBubble extends StatelessWidget {
  
  final Message message;
  const MessageUsersBubble({super.key, required this.message });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              message.text,
             style: TextStyle(
              color: Colors.white
            ) ,),
          ),
        ),
        SizedBox(height: 5,),

         ImageBubble(url: message.imageUrl),
         SizedBox(height: 10,)
        //!TODO: IMAGEN 
      ],
    );
  }
}