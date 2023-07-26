import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> strs = [
      "Nayeem Shiddiki Abir",
      "Saida Tasneem Shanta",
      "Jakia Binte Malek",
      "Umme Jesrin Tufa",
      "Wadiat Nayeem Anaira"
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
        centerTitle: false
      ),
      body: ListView.builder(
          itemCount: strs.length,
          itemBuilder: (context, index) {
            final data = strs[index];
            return ListTile(
              textColor: Colors.black,
              leading: const Icon(Icons.person),
              titleTextStyle: const TextStyle(fontWeight: FontWeight.normal),
              title: Text(data, style: const TextStyle(fontSize: 20)),
              onTap: () => {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(strs[index].toString()))),
              },
            );
          }),
    );
  }
}