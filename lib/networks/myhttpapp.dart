import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      darkTheme: ThemeData(primaryColor: Colors.grey),
      home: const MyScaffoldWidgets(),
    );
  }
}

class MyScaffoldWidgets extends StatefulWidget {
  const MyScaffoldWidgets({super.key});

  @override
  State<MyScaffoldWidgets> createState() => _MyScaffoldWidgetsState();
}

class _MyScaffoldWidgetsState extends State<MyScaffoldWidgets> {
  
  @override
  void initState() {
    super.initState();
    /// Call function when Screen launched
    myJsonNetworkCall();
  }

  List<dynamic> userList = [];

  /// Get json data from here ///
  void myJsonNetworkCall() async {

  const String url = "https://randomuser.me/api/?results=10";
  final uri = Uri.parse(url);
  final responses = await http.get(uri, headers: {"Accept": "application/json"});
  final body = responses.body;
  final json = jsonDecode(body);

    print(json);

    setState(() {
      userList = json['results'];
    });

    print ("Successfully fetch Data");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Http Network call")),
      body: ListView.builder(
        itemCount: userList == null ? 0 : userList.length,
        itemBuilder: (context, index) {
          final user = userList[index];
          return Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  user['name']['first'],
                  style: const TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
