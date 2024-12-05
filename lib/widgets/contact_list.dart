import 'package:chatapplication/colors.dart';
import 'package:chatapplication/info.dart';
import 'package:chatapplication/screens/mobile_chat_screen.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MobileChatScreen(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        info[index]['name'].toString(),
                        style: const TextStyle(fontSize: 18),
                      ),
                      subtitle: Text(
                        info[index]['message'].toString(),
                        style: const TextStyle(fontSize: 15),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                          info[index]['profilePic'].toString(),
                        ),
                        radius: 24,
                      ),
                      trailing: Text(
                        info[index]['time'].toString(),
                        style: const TextStyle(fontSize: 10),
                      ),
                    ),
                    const Divider(
                      color: dividerColor,
                      indent: 70,
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
