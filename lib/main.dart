import 'package:flutter/material.dart';
import 'package:login/screens/splash.dart';

const save_key_name = 'UserLogedIn';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Sample',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const ScreenSplash(),
    );
  }
}
