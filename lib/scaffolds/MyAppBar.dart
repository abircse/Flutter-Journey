import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget{
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      home: const AppBarActivity(),
    );
  }
}

class AppBarActivity extends StatefulWidget{
  const AppBarActivity({super.key});

  @override
  _AppBar createState() => _AppBar();
}

class _AppBar extends State<AppBarActivity> {

  /// Custom Snacker for display message as snackbar ///
  MySnackbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My App bar"),
          elevation: 5,
          centerTitle: false,
          titleSpacing: 10,
          toolbarHeight: 70,
          toolbarOpacity: 1,
          actions: [
            IconButton(onPressed: () { MySnackbar("Click", context); }, icon: const Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.airplanemode_active)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.person))
          ],
        ),
      );
  }
}