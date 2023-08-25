import 'package:flutter/material.dart';

class MyAlertDialog extends StatefulWidget {
  const MyAlertDialog({super.key});

  @override
  State<MyAlertDialog> createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return Expanded(
                      child: AlertDialog(
                        title: const Text('Welcome'),
                        content: const Text('GeeksforGeeks'),
                        actions: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('CANCEL'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('ACCEPT'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Text("Show Default Dialog"),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: SizedBox(
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText:
                                            'What do you want to remember?'),
                                  ),
                                  SizedBox(
                                    width: 320.0,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "Save",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: const Text("Show Custom Dialog"))
          ],
        ),
      ),
    );
  }
}
