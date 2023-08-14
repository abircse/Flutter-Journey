import 'package:flutter/material.dart';
import 'package:flutterjourney/httpreq/model/product_model.dart';

import 'apiservice/api_service.dart';
import 'model/user_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: fa,
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
  late List<UserModel>? userList = [];
  late List<Product>? productList = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    userList = (await ApiService().getUsers())!;
    productList = (await ApiService().getProducts());
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HTTP Package")),
      body: productList == null || productList!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: productList!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(productList![index].thumbnail.toString(), width: double.infinity, height: 200.0, fit: BoxFit.cover,),
                        Text(
                          productList![index].title.toString(),
                          style: const TextStyle(fontSize: 20.0),
                        ),
                        const SizedBox(width: 10.0,),
                        Text(
                          "Price: ${productList![index].price}",
                          style: const TextStyle(fontSize: 20.0),
                        )
                        
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
