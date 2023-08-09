import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Center(
        child: Text("Welcome from Home Screen",style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class AccountScreen extends StatelessWidget{
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Center(
        child: Text("Welcome from Account Screen",style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Center(
        child: Text("Welcome from Profile Screen", style: TextStyle(fontSize: 18)),
      ),
    );
  }
}

class DashboardScreen extends StatelessWidget{
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Center(
        child: Text("Welcome from Dashboard Screen",style: TextStyle(fontSize: 18)),
      ),
    );
  }
}