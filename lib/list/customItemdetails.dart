import 'package:flutter/material.dart';
import 'package:flutterjourney/list/user.dart';

class CustomItemDetailsScreen extends StatelessWidget {
  const CustomItemDetailsScreen({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Details")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.network(user.profileImage.toString(),
                  height: 200, width: 200),
              Text("Name: ${user.name}"),
              Text("Age: ${user.age}")
            ]),
      ),
    );
  }
}
