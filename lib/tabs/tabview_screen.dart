import 'package:flutter/material.dart';
import 'package:flutterjourney/tabs/chattab.dart';
import 'package:flutterjourney/tabs/messagetab.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(primaryColor: Colors.grey),
      home: MyScaffoldWidgets(),
    );
  }
}

class MyScaffoldWidgets extends StatelessWidget {
  MyScaffoldWidgets({super.key});

  late final int selectedTabIndexNo = 1;
  final tabScreens = [const ChatTabScreen(), const MessageTabsSceeen()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            indicatorColor: Colors.blue,
            indicatorWeight: 5.0,
            labelColor: Colors.white,
            isScrollable: false,
            unselectedLabelColor: Color.fromARGB(255, 204, 204, 204),
            tabs: [Tab(icon: Icon(Icons.chat_bubble_outline), text: "Chats"), Tab(icon: Icon(Icons.email), text: "Message")],
          ),
          title: const Text('Tab View'),
        ),
        body: const TabBarView(
          children: [ChatTabScreen(), MessageTabsSceeen()],
        ),
      ),
    );
  }
}
