import 'package:flutter/material.dart';

import 'apiservice/api_service.dart';
import 'model/user_model.dart';

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
  late List<UserModel>? userList = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    userList = (await ApiService().getUsers())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HTTP Package")),
      body: userList == null || userList!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: userList!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          userList![index].id.toString(),
                          style: const TextStyle(fontSize: 20.0),
                        ),
                        const SizedBox(width: 10.0),
                        Text(
                          userList![index].name,
                          style: const TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
