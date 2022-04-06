import 'package:flutter/material.dart';
// import 'package:messenger_clone/views/contact_page.dart';
import 'package:messenger_clone/views/navigation_frame.dart';
// import 'package:messenger_clone/views/search_page.dart';
import 'package:messenger_clone/views/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messenger Clone',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Login(),
    );
  }
}