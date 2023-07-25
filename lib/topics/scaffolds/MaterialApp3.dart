import 'package:flutter/material.dart';

class MaterialApp3 extends StatefulWidget{
  const MaterialApp3({super.key});

  @override
  _MaterialApp3 createState() => _MaterialApp3();
}

class _MaterialApp3 extends State<MaterialApp3>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        appBar: AppBar(
           title: const Text("Flutter Journey"),
      )
     )
    );
  }
}
