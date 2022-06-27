import 'package:flutter/material.dart';
import 'package:flutter_chat/components/filled_outline_button.dart';
import 'package:flutter_chat/contants.dart';
import 'package:flutter_chat/models/chat.dart';
import 'package:flutter_chat/screens/messages/message_screen.dart';

import 'chat_card.dart';

class ChatScreenBody extends StatelessWidget {
  const ChatScreenBody({Key? key}) : super(key: key);

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
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MessagesScreen(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
