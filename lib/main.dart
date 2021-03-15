import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

Color randomColor() {
  int red;
  int green;
  int blue;

  red = Random().nextInt(255);
  green = Random().nextInt(255);
  blue = Random().nextInt(255);

  return (Color.fromRGBO(red, green, blue, 1.0));
}

class _MyHomePageState extends State<MyHomePage> {
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SafeArea(
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: TextButton(
                  child: Text(
                    "Hey there",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                  onPressed: () {
                    setState(() {
                      color = randomColor();
                    });
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(color))),
            ),
          ),
        ),
      ),
    );
  }
}
