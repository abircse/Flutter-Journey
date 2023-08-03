import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: const MyColumnRowWidgets(),
  ));
}

class MyColumnRowWidgets extends StatelessWidget {
  const MyColumnRowWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Custom Toolbar Container //
            Container(
              color: Colors.blue,
              height: 70.00,
              width: double.infinity,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_ios, color: Colors.white),
                  SizedBox(height: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Asus Official Store",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Text("Active 5 hours ago",
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                  SizedBox(height: 5),
                  Icon(Icons.menu, color: Colors.white)
                ],
              ),
            ),
            const Align(
              alignment: AlignmentDirectional.topStart,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Text(
                      "ASUS GEN BOOK 5",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                    child: Text(
                      "Type: Pro 17 W700",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),

            /// Base Column
          ],
        ),
      ),
    );
  }
}
