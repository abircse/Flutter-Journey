import 'package:flutter/material.dart';
import 'package:flutterjourney/widgets/rowcolumn.dart';

void main() => runApp(const MaterialApp(home: _MySplashScreenState(), debugShowCheckedModeBanner: false));

class _MySplashScreenState extends StatefulWidget {
  const _MySplashScreenState({super.key});

  @override
  State<_MySplashScreenState> createState() => __MySplashScreenStateState();

}

class __MySplashScreenStateState extends State<_MySplashScreenState> {


 @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyColumnRowWidgets()),
            ));
  
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:  Padding(
          padding: EdgeInsets.all(100.0),
          child: Image(image: AssetImage('images/brandlogo.png')),
        )
      ),
    );
  }
}