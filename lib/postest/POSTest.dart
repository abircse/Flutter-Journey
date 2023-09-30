import 'package:android_bluetooth_printer/android_bluetooth_printer.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      darkTheme: ThemeData(primaryColor: Colors.grey),
      home: const MyScaffoldWidgets(),
    );
  }
}

class MyScaffoldWidgets extends StatelessWidget {
  const MyScaffoldWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hello World App")),
      body: Column(
        children: [
          ElevatedButton(onPressed: () async{
            try {
                  await AndroidBluetoothPrinter.print(
                    "[C]<u><font size='big'>ORDER N°045</font></u>\n" +
                        "[L]\n" +
                        "[C]================================\n" +
                        "[L]\n" +
                        "[L]<b>BEAUTIFUL SHIRT</b>[R]9.99e\n" +
                        "[L]  + Size : S\n" +
                        "[L]\n" +
                        "[L]<b>AWESOME HAT</b>[R]24.99e\n" +
                        "[L]  + Size : 57/58\n" +
                        "[L]\n" +
                        "[C]--------------------------------\n" +
                        "[R]TOTAL PRICE :[R]34.98e\n" +
                        "[R]TAX :[R]4.23e\n" +
                        "[L]\n" +
                        "[C]================================\n" +
                        "[L]\n" +
                        "[L]<font size='tall'>Customer :</font>\n" +
                        "[L]Raymond DUPONT\n" +
                        "[L]5 rue des girafes\n" +
                        "[L]31547 PERPETES\n" +
                        "[L]Tel : +33801201456\n",
                    // "[L]\n" +
                    // "[C]<barcode type='ean13' height='10'>831254784551</barcode>\n" +
                    // "[C]<qrcode size='20'>http://www.developpeur-web.dantsu.com/</qrcode>",
                    // ipAddress: '192.168.24.83:9100',
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(e.toString()),
                    ),
                  );
                }
          }, 
          child: const Text("Print Invoice"))
        ],
      ),
    );
  }
}