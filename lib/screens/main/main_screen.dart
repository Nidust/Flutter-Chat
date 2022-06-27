import 'package:flutter/material.dart';
import 'package:flutter_chat/contants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Chats"),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.search),
        //     onPressed: () {},
        //   )
        // ],
      ),
      body: Container(
        color: Colors.black54,
      ),
    );
  }
}