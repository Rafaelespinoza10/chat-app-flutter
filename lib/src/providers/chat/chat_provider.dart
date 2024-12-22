import 'package:chat_application/config/helpers/get_yes_not_answers.dart';
import 'package:chat_application/domains/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController scrollController = ScrollController();
  final getYesOrNotAnswer = GetYesNotAnswers();

  List<Message> messages =[


  ];

  Future<void> sendMessage(String message) async{
    if(message.isEmpty) return;
   final newMessage = Message(text: message, fromWho: FromWho.me);
    messages.add(newMessage);

    if( message.endsWith('?')){
      rafaReply();
    }

    notifyListeners();
    await moveScrollToBottom();
  }

  Future<void> rafaReply() async{
    final rafaReply = await getYesOrNotAnswer.getAnswers(); 
    messages.add(rafaReply);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async{
    await Future.delayed(const Duration(microseconds: 100));
    scrollController.animateTo(
      scrollController.position.maxScrollExtent, // maximo a lo que el scroll puede dar. 
      duration: Duration(milliseconds: 300), 
      curve: Curves.easeInOutSine,
      );
  }
} 