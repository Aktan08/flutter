import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

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
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Color(0xffA9A7A7),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(40)),
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/Charco_Good_Job.png',
                    width: 270,
                    height: 221,
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  const Text(
                    'MyDay team',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Padding(
                    padding: EdgeInsets.only(left: 35),
                    child: Container(
                        width: 330,
                        height: 75,
                        child: const Text(
                          ' prepared for you list of tasks to keep yourself \nbusy and challenged every day, making it more\n                            fun and enjoyable',
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
