import 'package:flutter/material.dart';
import 'dart:math';

class CoinTossPage extends StatefulWidget {
  const CoinTossPage({super.key});

  @override
  State<CoinTossPage> createState() => _CoinTossPageState();
}

class _CoinTossPageState extends State<CoinTossPage> {
  final rng = Random();
  String text = "";
  int tossNumber = 0;
  int numberOfHeads = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Coin Toss'), centerTitle: true),
      body: Center(child: _pageContent()),
    );
  }

  Widget _pageContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(text, style: TextStyle(fontSize: 72.0)),
        _tossArea(),
      ],
    );
  }

  Widget _tossArea() {
    return Column(
      children: [
        TextButton(onPressed: _tossLogic, child: const Text('Toss')),
        Text("Toss number: $tossNumber"),
      ],
    );
  }

  void _tossLogic() {
    setState(() {
      if (rng.nextBool()) {
        text = "Heads";
        numberOfHeads += 1;
      } else {
        text = "Tails";
      }
      tossNumber += 1;
    });
  }
}
