import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/homepage_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Color(0xff075e54),
        ),
        debugShowCheckedModeBanner: false,
        home: const MyHomePage());
  }
}
