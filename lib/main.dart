import 'package:flutter/material.dart';
import 'package:flutterjourney/topics/list/mycustomlist.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: Mycustomlist(),
  )
  );
}