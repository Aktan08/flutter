import 'package:flutter/material.dart';
import 'second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.grey),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                const Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecondRoute(),
                        ),
                      );
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: Color(0xffA9A7A7),
                        fontSize: 16,
                      ),
                    ))
              ],
            ),
            Padding(padding: EdgeInsets.all(40)),
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/Charco_Hi.png',
                    width: 270,
                    height: 221,
                  ),
                  Padding(padding: EdgeInsets.all(30)),
                  const Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: Container(
                        width: 330,
                        height: 75,
                        child: const Text(
                          'There are so many things you have \n           to experience in your life...',
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
