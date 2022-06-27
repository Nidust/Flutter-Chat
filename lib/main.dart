import 'package:flutter/material.dart';
import 'package:flutter_chat/screens/main/main_screen.dart';
import 'package:flutter_chat/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Chat Demo",
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: const MainScreen(),
    );
  }
}