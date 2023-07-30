import 'package:flutter/material.dart';
import 'package:flutterjourney/topics/customfont/CustomFont.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: CustomFont(),
  )
  );
}