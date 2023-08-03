import 'package:flutter/material.dart';

class MyGridViewScreen extends StatelessWidget {
  const MyGridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Grid list"), centerTitle: true),
      body: GridView.builder(
          itemCount: 8,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Column(
              children: [
                const SizedBox(height: 10, width: 10),
                Container(
                  width: double.infinity,
                  height: 170,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage("images/user.png"),
                          fit: BoxFit.cover)),
                ),
                const Text(
                  "Nayeem Shiddiki Abir",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 18)
                )
              ],
            );
          }),
    );
  }
}
