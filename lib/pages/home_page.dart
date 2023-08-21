import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/body.dart';
import '../widgets/floating_buttons.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: bar(title: widget.title),
        body: Body(counter: _counter),
        floatingActionButton: FloatingButtons(
          decrementCounter: _decrementCounter,
          resetCounter: _resetCounter,
          incrementCounter: _incrementCounter,
        ));
  }
}
