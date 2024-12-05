import 'package:chatapplication/colors.dart';
import 'package:chatapplication/widgets/contact_list.dart';
import 'package:flutter/material.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
                color: Colors.grey),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
                color: Colors.grey),
          ],
          bottom: const TabBar(
            labelColor: tabColor,
            // dividerColor: tabColor,
            indicatorColor: tabColor,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            tabs: [
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Updates',
              ),
              Tab(
                text: 'Calls',
              ),
            ],
          ),
        ),
        body: const ContactList(),
        floatingActionButton: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: tabColor,
          onPressed: () {},
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.comment),
          ),
        ),
      ),
    );
  }
}
