import 'package:flutter/material.dart';

class MyBottomSheetActivity extends StatefulWidget {
  const MyBottomSheetActivity({super.key});

  @override
  State<MyBottomSheetActivity> createState() => _MyBottomSheetActivityState();
}

class _MyBottomSheetActivityState extends State<MyBottomSheetActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Bottom Sheet"),),
      body: Center(
        child: MaterialButton(
          color: Colors.black, textColor: Colors.white, onPressed: () {
          _displayBottomSheet(context);
        },
          child: const Text("Open Bottom sheer"),),
      ),
    );
  }

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context, 
      backgroundColor: Colors.green,
      barrierColor: Colors.black.withOpacity(0.5),
      isDismissible: false,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))),
      builder: (context) => Container(
        height: 200,
        /// implement your design here whet

      ),
      );

  }
}