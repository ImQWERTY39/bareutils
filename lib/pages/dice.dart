import 'package:flutter/material.dart';
import 'dart:math';

class DiceRollPage extends StatefulWidget {
  const DiceRollPage({super.key});

  @override
  State<DiceRollPage> createState() => _DiceRollPageState();
}

class _DiceRollPageState extends State<DiceRollPage> {
  final rng = Random();
  String text = "";
  int rollNumber = 0;
  var times = [0, 0, 0, 0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dice Roll'), centerTitle: true),
      body: _pageContent(),
    );
  }

  Widget _pageContent() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(text, style: TextStyle(fontSize: 72.0)),
          _diceArea(),
        ],
      ),
    );
  }

  Widget _diceArea() {
    return Column(
      children: [
        TextButton(onPressed: _rollLogic, child: const Text('Roll')),
        Text("Dice Roll number: $rollNumber"),
      ],
    );
  }

  void _rollLogic() {
    setState(() {
      int number = rng.nextInt(6);

      times[number] += 1;
      text = (number + 1).toString();
      rollNumber += 1;
    });
  }
}
