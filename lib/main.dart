import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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

  Widget separator({double? width, double? height}) => SizedBox(
        width: width,
        height: height,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        centerTitle: true,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
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
                  color: Colors.green[800]),
            ),
            separator(height: 32),
            const Text(
              'Este é um contador simples,',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            const Text(
              'Você pode alterá-lo utilizando os botões abaixo.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
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
              onPressed: _decrementCounter,
              shape: const CircleBorder(),
              child: const Icon(Icons.remove),
            ),
            const SizedBox(
              width: 8,
            ),
            FloatingActionButton(
              tooltip: 'Resetar Contador',
              elevation: 2,
              onPressed: _resetCounter,
              shape: const CircleBorder(),
              child: const Icon(Icons.restore),
            ),
            const SizedBox(
              width: 8,
            ),
            FloatingActionButton(
              elevation: 2,
              onPressed: _incrementCounter,
              tooltip: '+1',
              shape: const CircleBorder(),
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
