import 'package:flutter/material.dart';
import 'package:login/main.dart';
import 'package:login/screens/home.dart';
import 'package:login/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    checkUserLoggedIn();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('Assets/Images/download.png', height: 180),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'APPLE',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
              ),
            )
          ],
        ))));
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> gotoLogin() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
      return ScreenLogin();
    }));
  }

  Future<void> checkUserLoggedIn() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final userLoggedIn = sharedPrefs.getBool(save_key_name);
    if (userLoggedIn == null || userLoggedIn == false) {
      gotoLogin();
    } else {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx1) => ScreenHome()));
    }
  }
}
