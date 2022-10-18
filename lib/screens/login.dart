import 'package:flutter/material.dart';
import 'package:login/main.dart';
import 'package:login/screens/hint.dart';
import 'package:login/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

//   constructor() {
  bool isDataMatched = false;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('Assets/Images/download.png', height: 100),
                const Text(
                  'Login Page',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Username',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This field can't be empty";
                    } else if (value != "admin") {
                      return "Wrong Username";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "This field can't be empty";
                    } else if (value != "admin") {
                      return "Wrong password";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  const  SizedBox(
                      width: 22,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          checkLogin(context);
                        } 
                      },
                      icon: const Icon(Icons.check),
                      label: const Text('Login'),
                    ),
                    ElevatedButton.icon(
                        onPressed: () {
                          hint(context);
                        },
                        icon: const Icon(Icons.question_mark_outlined),
                        label: const Text('Forgot Password')),
                  const  SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void checkLogin(BuildContext ctx) async {
    final username = usernameController.text;
    final password = passwordController.text;

    if (username == "admin" && password == "admin") {
      final sharedPrefs = await SharedPreferences.getInstance();
      sharedPrefs.setBool(save_key_name, true);
      Navigator.of(ctx).pushReplacement(
          MaterialPageRoute(builder: ((context) => ScreenHome())));
    } 
  }

  void hint(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(builder: ((context) => const ScreenHint())));
  }
}
