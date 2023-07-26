import 'package:flutter/material.dart';
import 'package:flutterjourney/topics/list/user.dart';

class Mycustomlist extends StatelessWidget {
  const Mycustomlist({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom List View"),
      ),
      body: ListView.builder(
        itemCount: myUserList.length,
        itemBuilder: (context, index){
          var user = myUserList[index];
          return ListTile(
            leading: Image.asset('images/user.png'),
            title: Text(user.name.toString(), style: const TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
            subtitle: Text("Age: ${user.age}"),
          );
        }
        ),
    );
  }
}
