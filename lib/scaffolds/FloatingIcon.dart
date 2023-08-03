import 'package:flutter/material.dart';

class FloatingIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      home: FloatingIconActivity(),
    );
  }
}

class FloatingIconActivity extends StatefulWidget{
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
                .showSnackBar(SnackBar(content: Text("CLICK ON FLOATING ACTION")));
          },
        ),
      );
  }
}