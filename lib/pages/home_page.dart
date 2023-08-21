import 'package:audioplayers/audioplayers.dart';
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

  final player = AudioPlayer();

  Future<void> play({required String source}) async {
    await player.setSource(AssetSource(source));
    await player.resume();
  }

  Future<void> _incrementCounter() async {
    await play(source: 'sounds/click.mp3');

    setState(() {
      _counter++;
    });
  }

  Future<void> _decrementCounter() async {
    if (_counter > 0) {
      await play(source: 'sounds/click.mp3');
      setState(() {
        _counter--;
      });
    }
  }

  Future<void> _resetCounter() async {
    if (_counter != 0) {
      await play(source: 'sounds/reset_click.mp3');

      setState(() {
        _counter = 0;
      });
    }
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
