import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[900],
          appBar: AppBar(
            title: Text(
              'Magic 8 Ball 🎱',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
              ),
            ),
            backgroundColor: Colors.blue,
          ),
          body: eightBallScreen(),
        ),
      ),
    );

class eightBallScreen extends StatefulWidget {
  const eightBallScreen({super.key});

  @override
  State<eightBallScreen> createState() => _eightBallScreenState();
}

class _eightBallScreenState extends State<eightBallScreen> {
  var answer = 1;

  void shakeBall() {
    setState(() {
      answer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: shakeBall,
        icon: Image.asset('images/ball$answer.png'),
      ),
    );
  }
}
