import '../styles/global_style.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.counter,
  });

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '$counter',
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
    );
  }
}
