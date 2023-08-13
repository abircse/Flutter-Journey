import 'package:flutter/material.dart';
import 'package:flutterjourney/tabs/callscreens.dart';
import 'package:flutterjourney/tabs/chattab.dart';
import 'package:flutterjourney/tabs/groupsscreen.dart';
import 'package:flutterjourney/tabs/statusscreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(primaryColor: Colors.grey),
      home: const MyScaffoldWidgets(),
    );
  }
}

class MyScaffoldWidgets extends StatelessWidget {
  const MyScaffoldWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF045e54),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5.0,
            labelColor: Colors.white,
            isScrollable: false,
            unselectedLabelColor: Color.fromARGB(255, 204, 204, 204),
            tabs: [
              Tab(icon: Icon(Icons.groups_2)),
              Tab(child: Text("Chats", style: TextStyle(fontSize: 18.0))),
              Tab(child: Text("Status", style: TextStyle(fontSize: 18.0))),
              Tab(child: Text("Calls", style: TextStyle(fontSize: 18.0))),
            ],
          ),
          title: const Text('WhatsApp'),
          centerTitle: false,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: const TabBarView(
          children: [GroupTabsScreen(), ChatTabScreen(), StatusTabSceeen(), CallsTabScreens()],
        ),
      ),
    );
  }
}
