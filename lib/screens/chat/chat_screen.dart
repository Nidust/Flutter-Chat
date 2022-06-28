import 'package:flutter/material.dart';
import 'package:flutter_chat/components/filled_outline_button.dart';
import 'package:flutter_chat/contants.dart';
import 'package:flutter_chat/models/chat.dart';
import 'package:flutter_chat/screens/messages/message_screen.dart';

import 'components/chat_card.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
              defaultPadding, 0, defaultPadding, defaultPadding),
          color: primaryColor,
          child: Row(
            children: [
              FillOutlineButton(
                onPress: () => {},
                text: "Recent Message",
              ),
              const SizedBox(width: defaultPadding),
              FillOutlineButton(
                onPress: () => {},
                text: "Activate",
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.of(context).push(_showChatData()),
            ),
          ),
        ),
      ],
    );
  }

  Route _showChatData() {
    const Duration transitionSpeed = Duration(milliseconds: 150);

    return PageRouteBuilder(
      transitionDuration: transitionSpeed,
      reverseTransitionDuration: transitionSpeed,
      pageBuilder: (context, animation, secondaryAnimation) =>
          const MessagesScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(0.0, 1.0);
        var end = Offset.zero;

        var tween = Tween(begin: begin, end: end);
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
