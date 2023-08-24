import 'package:flutter/material.dart';

import 'bottomsheet/mybottomsheet.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: const MyBottomSheetActivity(),
  )
  );
}