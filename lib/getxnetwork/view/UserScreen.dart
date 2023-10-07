import 'package:flutter/material.dart';
import 'package:flutterjourney/getxnetwork/viewmodel/UserViewModel.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      darkTheme: ThemeData(primaryColor: Colors.grey),
      home: const MyScaffoldWidgets(),
    );
  }
}

class MyScaffoldWidgets extends StatefulWidget {
  const MyScaffoldWidgets({super.key});

  @override
  State<MyScaffoldWidgets> createState() => _MyScaffoldWidgetsState();
}

class _MyScaffoldWidgetsState extends State<MyScaffoldWidgets> {

  final userViewModel = Get.put(UserViewModel());
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Getx Api Call")),
      body: Obx(() => userViewModel.isLoading.value ? const Center(
        child: CircularProgressIndicator(),
      ): ListView.builder(
        itemCount: userViewModel.userList.length,
        itemBuilder: (context, index) {
          final employeeData = userViewModel.userList[index];
          return ListTile(
            onTap: () {
              Get.snackbar(employeeData.name.toString(), "", snackPosition: SnackPosition.BOTTOM);
            },
            title: Text(employeeData.company!.name.toString()),
            subtitle: Text(employeeData.phone.toString()),
          );
        },
       )
      )
    );
  }
}