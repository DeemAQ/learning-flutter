import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDie = 1;
  var rightDie = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: IconButton(
                icon: Image.asset('images/dice$leftDie.png'),
                onPressed: rollDice,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: IconButton(
                icon: Image.asset('images/dice$rightDie.png'),
                onPressed: rollDice,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void rollDice() {
    setState(() {
      leftDie = Random().nextInt(6) + 1;
      rightDie = Random().nextInt(6) + 1;
    });
  }
}
