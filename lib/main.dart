import 'package:flutter/material.dart';
import 'package:flutterjourney/topics/list/mylist.dart';

void main() {
  /*
  runApp(MaterialApp(
    home: FirstScreen(),
  )
  );
  */

  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    home: MyList(),
  )
  );
}