import 'package:flutter/material.dart';
import 'package:flutterjourney/webview/mywebview.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: const MyWebViewActivity(),
  )
  );
}