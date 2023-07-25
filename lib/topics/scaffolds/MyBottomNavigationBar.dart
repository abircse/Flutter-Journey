import 'package:flutter/material.dart';
import 'package:flutterjourney/sample-pages.dart';

class MyBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      home: BottomNavigationActivity(),
    );
  }
}

class BottomNavigationActivity extends StatefulWidget {
  @override
  _bottomNav createState() => _bottomNav();
}

class _bottomNav extends State<BottomNavigationActivity> {

  var _myScreensData = [
    HomeScreen(),
    AccountScreen(),
    ProfileScreen(),
    DashboardScreen()
  ];

  int selectedBottomNavItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Bottom Navigation Bar")),
        body: Center(
          child: _myScreensData[selectedBottomNavItem],
          //child: Text("Welcome to bottom navigation"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex : selectedBottomNavItem,
          onTap: (value){
            setState(() {
              selectedBottomNavItem = value;
            });
          },
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), label: "Account"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: "Dashboard")
          ],
        ));
  }
}