import 'package:flutter/material.dart';

import 'dialogs/AlertDialog.dart';


void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: const MyAlertDialog(),
  )
  );
}