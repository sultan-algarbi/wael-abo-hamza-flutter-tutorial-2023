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
            child: Column(
              children: [
                TextFormField(
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
                // submit button
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: MaterialButton(
                    onPressed: () {
                      formState.currentState!.validate();
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: const Text('Validate'),
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

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      color: const Color(0xffe6f0fa),
      borderRadius: BorderRadius.circular(5),
      border: Border.all(
        color: Colors.black,
        width: 2,
      ),
    );
  }
}
