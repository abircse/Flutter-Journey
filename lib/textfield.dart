import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const _MyRegistrationFormState(),
    );
  }
}

class _MyRegistrationFormState extends StatefulWidget {
  const _MyRegistrationFormState({super.key});

  @override
  State<_MyRegistrationFormState> createState() =>
      __MyRegistrationFormStateState();
}

class __MyRegistrationFormStateState extends State<_MyRegistrationFormState> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController shortBiographyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("User Registration"), centerTitle: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: firstNameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Write here...",
                    labelText: "First Name"),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 10),
              TextField(
                controller: lastNameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Write here...",
                    labelText: "Last Name"),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 10),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Write here...",
                    labelText: "Email"),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 10),
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Write here...",
                    labelText: "Phone"),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 10),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Write here...",
                    labelText: "Password"),
                textInputAction: TextInputAction.next,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(height: 10),
              TextField(
                controller: shortBiographyController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Write here...",
                    labelText: "Short Biography"),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(firstNameController.text)));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // <-- Radius
                    ),
                  ),
                  child: const Text(
                    "Register Now!",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
