import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue),
        home: Scaffold(
          backgroundColor: Color(0xffB2EAF1),
          appBar: AppBar(
            title: Text(
              'First screen of my apl',
              style: TextStyle(fontSize: 22, color: Colors.black),
            ),
            centerTitle: true,
          ),
          body: SafeArea(
              child: Row(
            children: [
              Column(children: [
                Padding(
                    padding: EdgeInsets.only(
                        top: 0, bottom: 20, left: 130, right: 0)),
                Stack(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      color: Color(0xffE77475),
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                top: 0, bottom: 70, left: 0, right: 35)),
                        Text(
                          '1',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Stack(children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Color(0xffFFEF61),
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: 0, bottom: 100, left: 0, right: 45)),
                      Text(
                        '2',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )
                ]),
                Stack(children: [
                  Container(
                    width: 120,
                    height: 120,
                    color: Color(0xff4DAE51),
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: 0, bottom: 120, left: 0, right: 55)),
                      Text(
                        '3',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )
                ])
              ]),
              Column(children: [
                Padding(
                    padding: EdgeInsets.only(
                        top: 0, bottom: 200, left: 0, right: 0)),
                Stack(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      color: Color(0xffE77475),
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                top: 0, bottom: 70, left: 0, right: 35)),
                        Text(
                          '1',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Stack(children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Color(0xffFFEF61),
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: 0, bottom: 100, left: 0, right: 45)),
                      Text(
                        '2',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )
                ]),
                Stack(children: [
                  Container(
                    width: 120,
                    height: 120,
                    color: Color(0xff4DAE51),
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: 0, bottom: 120, left: 0, right: 55)),
                      Text(
                        '3',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )
                ])
              ]),
              Column(children: [
                Padding(
                    padding: EdgeInsets.only(
                        top: 0, bottom: 400, left: 130, right: 0)),
                Stack(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      color: Color(0xffE77475),
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                top: 0, bottom: 70, left: 0, right: 35)),
                        Text(
                          '1',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Stack(children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Color(0xffFFEF61),
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: 0, bottom: 100, left: 0, right: 45)),
                      Text(
                        '2',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )
                ]),
                Stack(children: [
                  Container(
                    width: 120,
                    height: 120,
                    color: Color(0xff4DAE51),
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: 0, bottom: 120, left: 0, right: 55)),
                      Text(
                        '3',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )
                ])
              ]),
            ],
          )),
        ));
  }
}
