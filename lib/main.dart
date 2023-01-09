import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/pages/homepage_view.dart';
import 'package:whatsappclone/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Splash_Screen()
      
      );
  }
}
