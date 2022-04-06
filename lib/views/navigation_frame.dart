import 'package:flutter/material.dart';
import 'package:messenger_clone/views/contact_page.dart';
import 'package:messenger_clone/views/search_page.dart';
import 'package:messenger_clone/views/settings_page.dart';

class NavigationFrame extends StatelessWidget {
  const NavigationFrame({Key? key}) : super(key: key);
  final f = 'ttt';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              TabBar(
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.blue,
                indicatorColor: Colors.blue,
                tabs: [
                  Tab(icon: Icon(Icons.chat_bubble)),
                  Tab(icon: Icon(Icons.people)),
                  Tab(icon: Icon(Icons.settings)),
                ],
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SingleChildScrollView(child: ContactsPage()),
            SingleChildScrollView(child: SearchPage()),
            SingleChildScrollView(child: SettingsPage()),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add, color: Colors.white),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
