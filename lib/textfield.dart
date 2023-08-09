import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: Colors.blue, fontFamily: "Poppins-Regular"),
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
  final _formKey = GlobalKey<FormState>();

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController shortBiographyController = TextEditingController();

  final textFieldFocusNode = FocusNode();
  bool _obscured = false;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus)
        return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus =
          false; // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("User Registration"), centerTitle: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: firstNameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Write here...",
                      labelText: "First Name"),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter First Name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: lastNameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Write here...",
                      labelText: "Last Name"),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Last Name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Write here...",
                      labelText: "Email"),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Write here...",
                      labelText: "Phone"),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Phone';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  obscureText: _obscured,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Write here...",
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon( _obscured ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                            _obscured = !_obscured;
                          },
                        );
                      },
                    ),
                  ),
                  focusNode: textFieldFocusNode,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Password';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: shortBiographyController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Write here...",
                      labelText: "Short Biography"),
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Short Biography Name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  height: 60.0,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Expanded(
                              child: AlertDialog(
                                title: const Text("Result"),
                                content: Text(
                                    "FullName: ${firstNameController.text} ${lastNameController.text} \n Email: ${emailController.text} \n Phone: ${phoneController.text} \n Password: ${passwordController.text}, \n Biography: ${shortBiographyController.text}"),
                              ),
                            );
                          },
                        );
                      }
                      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(firstNameController.text)));
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
      ),
    );
  }
}
