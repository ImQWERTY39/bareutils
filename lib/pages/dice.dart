import 'package:flutter/material.dart';
import 'dart:math';

class DiceRollPage extends StatefulWidget {
  const DiceRollPage({super.key});

  @override
  State<DiceRollPage> createState() => _DiceRollPageState();
}

class _DiceRollPageState extends State<DiceRollPage> {
  String text = "";
  Random rng = Random();
  int tossNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dice Roll'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(text, style: TextStyle(fontSize: 72.0)),
            Column(
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      text = (rng.nextInt(5) + 1).toString();
                      tossNumber += 1;
                    });
                  },
                  child: Text('Roll'),
                ),
                Text("Dice Roll number: $tossNumber"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
