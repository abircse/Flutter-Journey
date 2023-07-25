import 'package:flutter/material.dart';

class LefNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: LeftNavigationDrawerActivity(),
    );
  }
}

class LeftNavigationDrawerActivity extends StatefulWidget {
  @override
  _LeftNavigationDrawerActivity createState() =>
      _LeftNavigationDrawerActivity();
}

class _LeftNavigationDrawerActivity extends State<LeftNavigationDrawerActivity> {

  /// Variable for handle scaffold state pass to key in scaffold
  var scaffoldKey = GlobalKey<ScaffoldState>();

  var bodyTitle = "A drawer is an invisible side screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text("Left Navigation Drawer"),
        leading: IconButton(
            icon: Icon(Icons.no_food_outlined),
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            }),
      ),
      body: Center(
          child: Text(
        bodyTitle,
        style: TextStyle(fontSize: 20.0),
      )),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            /// Drawer header part
            UserAccountsDrawerHeader(
              accountName: Text("Nayeem Shiddiki Abir"),
              accountEmail: Text("abircoxsbazar@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text("N", style: TextStyle(fontSize: 40.0))),
            ),

            /// Drawer list item
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {

                  /// Snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Click on Home item")));

                  /// Change text of body as sample dynamically
                  setState(() {
                    bodyTitle = "Welcome to Home Screen";
                  });

                  /// Close drawer
                  Navigator.of(context).pop();

                }),
            ListTile(
                leading: Icon(Icons.bur),
                title: Text("Burger"),
                onTap: () {}),
            ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Pizza"),
                onTap: () {}),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text("Juice-Orange"),
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}
