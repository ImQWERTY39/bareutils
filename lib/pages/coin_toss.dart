import 'package:flutter/material.dart';
import 'dart:math';

class CoinTossPage extends StatefulWidget {
  const CoinTossPage({super.key});

  @override
  State<CoinTossPage> createState() => _CoinTossPageState();
}

class _CoinTossPageState extends State<CoinTossPage> {
  String text = "";
  Random rng = Random();
  int tossNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Coin Toss'), centerTitle: true),
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
                      text = rng.nextBool() ? "Heads" : "Tails";
                      tossNumber += 1;
                    });
                  },
                  child: Text('Toss'),
                ),
                Text("Toss number: $tossNumber"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
