import 'package:bareutils/pages/coin_toss.dart';
import 'package:bareutils/pages/counter.dart';
import 'package:bareutils/pages/dice.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BareUtils'), centerTitle: true),
      body: _createBody(context),
    );
  }

  Widget _createBody(BuildContext context) {
    return Center(
      child: Column(
        children: [
          _createButton(
            context,
            (context) => const CoinTossPage(),
            const Text('Coin Toss'),
          ),
          _createButton(
            context,
            (context) => const DiceRollPage(),
            const Text('Dice Roll'),
          ),
          _createButton(
            context,
            (context) => const CounterPage(),
            const Text('Counter'),
          ),
        ],
      ),
    );
  }

  TextButton _createButton(
    BuildContext context,
    Widget Function(BuildContext) builder,
    Text msg,
  ) {
    return TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: builder));
      },
      child: msg,
    );
  }
}
