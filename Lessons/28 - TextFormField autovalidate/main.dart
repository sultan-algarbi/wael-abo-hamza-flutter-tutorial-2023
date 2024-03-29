// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<FormState> formState = GlobalKey();

  String? email;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: myAppBar(),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(30),
          child: Form(
            key: formState,
            // autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  // readOnly: true,
                  // onTap: () => print('Email field tapped'),
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email';
                    } else if (!value.contains('@') || !value.contains('.')) {
                      return 'Please enter valid email';
                    } else if (value.length < 5) {
                      return 'Email should be at least 5 characters';
                    } else if (value.length > 50) {
                      return 'Email should not be more than 50 characters';
                    }
                    return null;
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter password';
                      } else if (value.length < 5) {
                        return 'Password should be at least 5 characters';
                      } else if (value.length > 50) {
                        return 'Password should not be more than 50 characters';
                      }
                      return null;
                    },
                  ),
                ),
                // submit button
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: MaterialButton(
                    onPressed: () {
                      if (formState.currentState!.validate()) {
                        formState.currentState!.save();
                        print('Email: $email');
                      } else {
                        print('Form is invalid');
                      }
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: const Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget myAppBar() {
    return AppBar(
      title: const Text(
        'Flutter Tutorial',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
