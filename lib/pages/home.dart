import 'package:bareutils/pages/coin_toss.dart';
import 'package:bareutils/pages/dice.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BareUtils'), centerTitle: true),

      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CoinTossPage()),
                );
              },
              child: Text('Coin Toss'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DiceRollPage()),
                );
              },
              child: Text('Dice Roll'),
            ),
          ],
        ),
      ),
    );
  }
}
