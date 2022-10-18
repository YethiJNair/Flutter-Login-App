import 'package:flutter/material.dart';
import 'package:login/screens/login.dart';

class ScreenHint extends StatelessWidget {
  const ScreenHint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          "Forgot Username and Password?",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Username :",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "admin",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Password :",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "admin",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton.icon(
            onPressed: () {
              goback(context);
            },
            icon: const Icon(Icons.arrow_back),
            label: const Text('back')),
      ])),
    );
  }

  void goback(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(builder: ((context) => const ScreenLogin())));
  }
}
