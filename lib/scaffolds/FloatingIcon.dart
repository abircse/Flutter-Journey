import 'package:flutter/material.dart';

class FloatingIcon extends StatelessWidget{
  const FloatingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      home: const FloatingIconActivity(),
    );
  }
}

class FloatingIconActivity extends StatefulWidget{
  const FloatingIconActivity({super.key});

  @override
  _floatingIcon createState() => _floatingIcon();
}

class _floatingIcon extends State<FloatingIconActivity>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Floating Icon")
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.alarm),
          onPressed: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("CLICK ON FLOATING ACTION")));
          },
        ),
      );
  }
}