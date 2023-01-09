import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.grey),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 224, 224, 224),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyContainer(
                  iconka: Icon(Icons.bedtime_outlined),
                  text: 'Current Weight',
                  data: '--kgs'),
              MyContainer(
                  iconka: Icon(Icons.beenhere_outlined),
                  text: 'Target Weight',
                  data: '--kgs'),
              MyContainer(
                  iconka: Icon(Icons.bento_outlined),
                  text: 'Height',
                  data: '---cms'),
            ],
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
    required this.iconka,
    required this.text,
    required this.data,
  }) : super(key: key);
  final String text;
  final Icon iconka;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: 5,
          bottom: 5,
          left: 30,
          right: 30,
        ),
        child: Container(
            width: double.infinity,
            height: 48,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  iconka,
                  const Padding(padding: EdgeInsets.only(left: 0, right: 20)),
                  Text(
                    text,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    data,
                    style: const TextStyle(color: Color(0xff898A8D)),
                  )
                ],
              ),
            )));
  }
}
