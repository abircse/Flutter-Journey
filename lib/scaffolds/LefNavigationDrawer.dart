import 'package:flutter/material.dart';
import 'package:flutterjourney/scaffolds/sample-pages.dart';


class LefNavigationDrawer extends StatelessWidget {
  const LefNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: const LeftNavigationDrawerActivity(),
    );
  }
}

class LeftNavigationDrawerActivity extends StatefulWidget {
  const LeftNavigationDrawerActivity({super.key});

  @override
  _LeftNavigationDrawerActivity createState() =>
      _LeftNavigationDrawerActivity();
}

class _LeftNavigationDrawerActivity extends State<LeftNavigationDrawerActivity> {

  /// Variable for handle scaffold state pass to key in scaffold
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var bodyTitle = "A drawer is an invisible side screen";

  final _myDrawerReplacableScreensData = [
    const HomeScreen(),
    const AccountScreen(),
    const ProfileScreen(),
    const DashboardScreen()
  ];

  final _toolbarTitle = ["Home", "Account", "Profile", "Dashboard"];

  int selectedDrawerItem = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(_toolbarTitle[selectedDrawerItem]),
        leading: IconButton(
            icon: const Icon(Icons.menu),
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
            const UserAccountsDrawerHeader(
              accountName: Text("Nayeem Shiddiki Abir"),
              accountEmail: Text("abircoxsbazar@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text("N", style: TextStyle(fontSize: 40.0))),
            ),

            /// Drawer list item
            ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {

                  setState(() {
                    selectedDrawerItem = 0;
                  });

                  /// Snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Click on Home item")));

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
                leading: const Icon(Icons.account_balance),
                title: const Text("Account"),
                onTap: () {
                  setState(() {
                    selectedDrawerItem = 1;
                      /// Close drawer
                      Navigator.of(context).pop();
                  });
                }),
            ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Profile"),
                onTap: () {
                  setState(() {
                    selectedDrawerItem = 2;
                     /// Close drawer
                     Navigator.of(context).pop();
                  });
                }),
            ListTile(
                leading: const Icon(Icons.dashboard),
                title: const Text("Dashboard"),
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
