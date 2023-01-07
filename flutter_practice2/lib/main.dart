import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue),
        home: Scaffold(
          backgroundColor: Color(0xFFFE0000),
          appBar: AppBar(
            title: Text(
              'Sample app',
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
          ),
          body: SafeArea(
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                          top: 200, bottom: 400, left: 170, right: 0)),
                  Text('image'),
                ],
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 392.7,
                        height: 100,
                        color: Color(0xff00FF01),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 10, bottom: 0, left: 30, right: 90)),
                              Stack(
                                children: [
                                  Container(
                                      width: 100,
                                      height: 80,
                                      color: Color(0xffFD9800)),
                                  Column(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 20,
                                              bottom: 0,
                                              left: 30,
                                              right: 70)),
                                      Icon(
                                        Icons.add,
                                        size: 30,
                                      ),
                                      Text('Add',
                                          style: TextStyle(fontSize: 16))
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 10, bottom: 0, left: 30, right: 90)),
                              Stack(
                                children: [
                                  Container(
                                      width: 100,
                                      height: 80,
                                      color: Color(0xffFD9800)),
                                  Column(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 20,
                                              bottom: 0,
                                              left: 30,
                                              right: 70)),
                                      Icon(
                                        Icons.add,
                                        size: 30,
                                      ),
                                      Text('Add',
                                          style: TextStyle(fontSize: 16))
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 10, bottom: 0, left: 30, right: 90)),
                              Stack(
                                children: [
                                  Container(
                                      width: 100,
                                      height: 80,
                                      color: Color(0xffFD9800)),
                                  Column(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 20,
                                              bottom: 0,
                                              left: 30,
                                              right: 70)),
                                      Icon(
                                        Icons.add,
                                        size: 30,
                                      ),
                                      Text('Add',
                                          style: TextStyle(fontSize: 16))
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 10, bottom: 0, left: 00, right: 0)),
                              Stack(
                                children: [
                                  Container(
                                      width: 32.7,
                                      height: 80,
                                      color: Color(0xffFD9800)),
                                  Column(
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 20,
                                              bottom: 0,
                                              left: 0,
                                              right: 0)),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            ]),
          ),
        ));
  }
}
