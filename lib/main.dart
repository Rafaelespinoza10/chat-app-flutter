

import 'package:chat_application/config/themes/app_theme.dart';
import 'package:chat_application/src/chat/screen/chat_screen.dart';
import 'package:chat_application/src/providers/chat/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider() )  //Chat Provider a todo la aplicacion. 
      ],
      child: MaterialApp(
        title: 'YesNotApp',
        debugShowCheckedModeBanner: false,
        theme: AppTheme( selectedColor: 5 ).theme(),
        home: const ChatScreen(),
      ),
    );
  }
}