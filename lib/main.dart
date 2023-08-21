import 'package:flutter/material.dart';
import 'package:flutterjourney/navigationroute/FirstScreen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: const FirstScreen(),
  )
  );
}