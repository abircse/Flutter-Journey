import 'package:flutter/material.dart';
import 'package:flutterjourney/sample-pages.dart';


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

  var _myDrawerReplacableScreensData = [
    HomeScreen(),
    AccountScreen(),
    ProfileScreen(),
    DashboardScreen()
  ];

  var _toolbarTitle = ["Home", "Account", "Profile", "Dashboard"];

  int selectedDrawerItem = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(_toolbarTitle[selectedDrawerItem]),
        leading: IconButton(
            icon: Icon(Icons.no_food_outlined),
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            }),
      ),
      body: Center(
          child: _myDrawerReplacableScreensData[selectedDrawerItem],
      ),
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

                  setState(() {
                    selectedDrawerItem = 0;
                  });

                  /// Snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Click on Home item")));

                  /// Change text of body as sample dynamically
                  setState(() {
                    bodyTitle = "Welcome to Home Screen";
                  });

                  /// Close drawer
                  Navigator.of(context).pop();

                  /// Navigate to Specific Screen
                  /*
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                   */

                }),
            ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("Account"),
                onTap: () {
                  setState(() {
                    selectedDrawerItem = 1;
                      /// Close drawer
                      Navigator.of(context).pop();
                  });
                }),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: () {
                  setState(() {
                    selectedDrawerItem = 2;
                     /// Close drawer
                     Navigator.of(context).pop();
                  });
                }),
            ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Dashboard"),
                onTap: () {
                    setState(() {
                      selectedDrawerItem = 3;
                        /// Close drawer
                        Navigator.of(context).pop();
                    });
                }),
          ],
        ),
      ),
    );
  }
}
