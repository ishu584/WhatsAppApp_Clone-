import 'package:flutter/material.dart';
import 'package:whatsapp_app/screen/add_call_screen.dart';
import 'package:whatsapp_app/screen/add_contact_screen.dart';
import 'package:whatsapp_app/screen/calls_screen.dart';
import 'package:whatsapp_app/screen/communities_screen.dart';
import 'package:whatsapp_app/screen/dash_board_screen.dart';
import 'package:whatsapp_app/screen/splash_screen.dart';
import 'package:whatsapp_app/screen/typing_screen.dart';
import 'package:whatsapp_app/screen/update_screen.dart';
import 'package:whatsapp_app/screen/user_call_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      ///here we call Dash board screen
      home: const SplashScreen(),
    );
  }
}
