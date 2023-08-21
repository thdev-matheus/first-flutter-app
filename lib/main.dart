import 'package:flutter/material.dart';
import './styles/global_style.dart';

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
      floatingActionButton: Container(
        margin: const EdgeInsets.only(left: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              tooltip: '-1',
              elevation: 2,
              backgroundColor: primary['background_color'],
              onPressed: _decrementCounter,
              shape: const CircleBorder(),
              child: Icon(
                Icons.remove,
                color: primary['color'],
              ),
            ),
            separator(width: 8),
            FloatingActionButton(
              tooltip: 'Resetar Contador',
              elevation: 2,
              onPressed: _resetCounter,
              backgroundColor: primary['background_color'],
              shape: const CircleBorder(),
              child: Icon(
                Icons.restore,
                color: primary['color'],
              ),
            ),
            separator(width: 8),
            FloatingActionButton(
              elevation: 2,
              onPressed: _incrementCounter,
              backgroundColor: primary['background_color'],
              tooltip: '+1',
              shape: const CircleBorder(),
              child: Icon(
                Icons.add,
                color: primary['color'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
