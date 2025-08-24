import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter'), centerTitle: true),
      body: Center(child: _pageContent()),
    );
  }

  Widget _pageContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(count.toString(), style: TextStyle(fontSize: 72.0)),
        _tossArea(),
      ],
    );
  }

  Widget _tossArea() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _modifierButtons(),
        ),
        TextButton(onPressed: _reset, child: const Text("Reset")),
      ],
    );
  }

  List<Widget> _modifierButtons() {
    return [
      _modifierButton(_minusLogic, const Text('-')),
      _modifierButton(_plusLogic, const Text('+')),
    ];
  }

  void _reset() {
    setState(() {
      count = 0;
    });
  }

  void _plusLogic() {
    setState(() {
      count += 1;
    });
  }

  void _minusLogic() {
    setState(() {
      count -= 1;
    });
  }

  TextButton _modifierButton(void Function() function, Text s) {
    return TextButton(
      onPressed: function,
      style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 24.0)),
      child: s,
    );
  }
}
