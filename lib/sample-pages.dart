import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text("Welcome from Home Screen",style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class AccountScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text("Welcome from Account Screen",style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text("Welcome from Profile Screen", style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class DashboardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text("Welcome from Dashboard Screen",style: TextStyle(fontSize: 18)),
      ),
    );
  }
}