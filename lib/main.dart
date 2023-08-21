import 'package:flutter/material.dart';
import './styles/global_style.dart';
import 'widgets/floating_buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Contador'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        appBar: AppBar(
          backgroundColor: primary['background_color'],
          centerTitle: true,
          title: Text(
            widget.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: primary['color'],
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$_counter',
                style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: primary['background_color']),
              ),
              separator(height: 16),
              Text(
                'Este é um contador simples,',
                style: TextStyle(
                  fontSize: 16,
                  color: primary['text_color'],
                ),
              ),
              Text(
                'Você pode alterá-lo utilizando os botões abaixo.',
                style: TextStyle(
                  fontSize: 16,
                  color: primary['text_color'],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingButtons(
          decrementCounter: _decrementCounter,
          resetCounter: _resetCounter,
          incrementCounter: _incrementCounter,
        ));
  }
}
