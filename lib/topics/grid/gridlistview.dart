import 'package:flutter/material.dart';

class MyGridViewScreen extends StatelessWidget {
  const MyGridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid list"), centerTitle: true),
      body: GridView.builder(
          itemCount: 8,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                          image: AssetImage("images/user.png"),
                          fit: BoxFit.cover)),
                ),
                Text("Abir")
              ],
            );
          }),
    );
  }
}
