import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> cards = [
    '1.jpeg',
    '2.jpeg',
    '3.jpeg',
    '4.jpeg',
    '5.jpeg',
  ];

  int currentIndex = 0;

  void getRandom() {
    final random = Random();
    final index = random.nextInt(cards.length - 1);

    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Implement Random'),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              height: 500,
              decoration: BoxDecoration(
                  border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage('assets/images/${cards[currentIndex]}'),
                    fit: BoxFit.fill,
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            TextButton(
                onPressed: () {
                  getRandom();
                },
                child: Text('Get Card'))
          ],
        ),
      )),
    );
  }
}
