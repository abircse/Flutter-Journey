import 'package:flutter/material.dart';

class CustomFont extends StatelessWidget {
  const CustomFont({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primarySwatch: Colors.blue, fontFamily: "Poppins-Regular"),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      home: const CustomFontActivity(),
    );
  }
}

class CustomFontActivity extends StatefulWidget {
  const CustomFontActivity({super.key});

  @override
  _CustomFont createState() => _CustomFont();
}

class _CustomFont extends State<CustomFontActivity> {
  MySnackbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Font"),
        elevation: 5,
        centerTitle: false,
        titleSpacing: 10,
        toolbarHeight: 70,
        toolbarOpacity: 1,
        actions: [
          IconButton(
              onPressed: () {
                MySnackbar("Click", context);
              },
              icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.airplanemode_active)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person))
        ],
      ),
      body: Column(
        children: <Widget>[
          FilledButton(onPressed: () {}, child: const Text("Login"),),
          FilledButton(onPressed: () {}, child: const Text("Registration")),
          FilledButton(onPressed: () {}, child: const Text("SignUp ")),
          FilledButton(onPressed: () {}, child: const Text("Forgot Password")),
          FilledButton(onPressed: () {}, child: const Text("Reset password"))

        ],
      ),
    );
  }
}
