import 'package:flutter/material.dart';
import 'package:login/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              '  Apple',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontWeight: FontWeight.w900),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    signout(context);
                  },
                  icon: const Icon(Icons.exit_to_app))
            ]),
        body: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Our products",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("Assets/Images/14 pro.jpg"),
              ),
              title: Text(
                "Iphone 14 Pro",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Pro. Beyond. Buy now. Meet the new face of iPhone.",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
              thickness: 0.8,
            ),
            ListTile(
              leading: ClipRRect(
                child: Container(
                    height: 60,
                    // width: 50,
                    child: Image.asset('Assets/Images/14.jpg')),
              ),
              title: const Text(
                "Iphone 14",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "Big and bigger.Capture even more sensational shots",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
              thickness: 0.8,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("Assets/Images/concept.jpg"),
              ),
              title: Text(
                "Concept Iphone 15 pro",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              subtitle: Text(
                "Next gen Iphone leaks",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
              thickness: 0.8,
            ),
            ListTile(
              leading: Container(
                height: 70,
                child: ClipRRect(
                  child: Image.asset("Assets/Images/pro.jpg"),
                ),
              ),
              title: const Text(
                "Macbook Pro M2 chip",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "13-inch MacBook Pro laptop supercharged by M2 chip.",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
              thickness: 0.8,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("Assets/Images/watch.jpg"),
              ),
              title: Text(
                "Watch series 8",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "New sensor that tracks your temperature while you sleep.",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
              thickness: 0.8,
            ),
            ListTile(
              leading: Container(
                height: 70,
                child: ClipRRect(
                  child: Image.asset("Assets/Images/air.jpg"),
                ),
              ),
              title: const Text(
                "Macbook air M2 chip",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "MacBook Air is supercharged by M2 chip.",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
              thickness: 0.8,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("Assets/Images/ultra.jpg"),
              ),
              title: Text(
                "Apple Watch ultra",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Apple Watch Ultra. Rugged and capable.",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
              thickness: 0.8,
            ),
            ListTile(
              leading: Container(
                height: 70,
                child: ClipRRect(
                  child: Image.asset("Assets/Images/13 pro.jpg"),
                ),
              ),
              title: const Text(
                "Iphone 13 pro",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "6.1″ display, Apple A15 Bionic chipset.",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 5,
              thickness: 0.8,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("Assets/Images/13.jpg"),
              ),
              title: Text(
                "Iphone 13",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "3240 mAh battery, 512 GB storage,.",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            // const Divider(
            //   color: Colors.grey,
            //   height: 5,
            //   thickness: 0.8,
            // ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey,
                      elevation: 20,
                      primary: Color.fromARGB(255, 24, 23, 23)),
                  onPressed: () {
                    cominsoon(context);
                  },
                  child: const Text(
                    'Visit www.apple.com for more',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}

cominsoon(context) {
  const snackBar = SnackBar(
    content: Text('Coming Soon!'),
    padding: EdgeInsets.all(20.0),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
    backgroundColor: Color.fromARGB(255, 162, 44, 36),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

signout(BuildContext ctx) async {
  final sharedPrefs = await SharedPreferences.getInstance();
  await sharedPrefs.clear();

  Navigator.of(ctx).pushAndRemoveUntil(
      MaterialPageRoute(builder: (ctx1) => const ScreenLogin()),
      (route) => false);
}
