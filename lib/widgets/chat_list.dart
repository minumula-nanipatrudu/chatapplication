import 'package:chatapplication/info.dart';
import 'package:chatapplication/widgets/my_message_card.dart';
import 'package:chatapplication/widgets/sender_message_card.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          // myMessage -> card
          return MyMessageCard(
            message: messages[index]['isMe'].toString(),
            time: messages[index]['time'].toString(),
          );
        }
        return SenderMessageCard(
          message: messages[index]['text'].toString(),
          time: messages[index]['time'].toString(),
        );
      },
    );
  }
}
