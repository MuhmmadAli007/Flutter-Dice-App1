import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.redAccent[200],
        child: ListView(
          children: [
            ListTile(
              title: Text('Dice 1'),
              onTap: () {
                //no work
              },
            ),
            ListTile(
              title: Text('Dice 2'),
              onTap: () {
                //no work
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.red[300],
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Dice App',
          style: TextStyle(
            fontFamily: 'itim',
            fontSize: 20,
            letterSpacing: 1.5,
          ),
        ),
      ),
      body: Dice(),
    ),
  ));
}

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var num = 1;
  var num1 = 1;
  void touch() {
    num = Random().nextInt(6) + 1;
    num1 = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  touch();
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'images/dice$num.png',
                  width: 200,
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  touch();
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'images/dice$num1.png',
                  width: 200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
