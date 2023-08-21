import '../styles/global_style.dart';
import 'package:flutter/material.dart';

class FloatingButtons extends StatelessWidget {
  const FloatingButtons({
    super.key,
    required this.decrementCounter,
    required this.resetCounter,
    required this.incrementCounter,
  });

  final void Function() decrementCounter;
  final void Function() resetCounter;
  final void Function() incrementCounter;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          primaryButton(
            tooltip: '-1',
            action: decrementCounter,
            child: Icon(
              Icons.remove,
              color: primary['color'],
            ),
          ),
          separator(width: 8),
          primaryButton(
            tooltip: 'Resetar Contador',
            action: resetCounter,
            child: Icon(
              Icons.restore,
              color: primary['color'],
            ),
          ),
          separator(width: 8),
          primaryButton(
            tooltip: '+1',
            action: incrementCounter,
            child: Icon(
              Icons.add,
              color: primary['color'],
            ),
          ),
        ],
      ),
    );
  }
}
