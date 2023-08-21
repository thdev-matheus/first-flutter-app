import 'package:flutter/material.dart';

Map primary = {
  'background_color': Colors.green[800],
  'color': Colors.white,
  'text_color': Colors.black54,
};

Widget separator({
  double? width,
  double? height,
}) =>
    SizedBox(
      width: width,
      height: height,
    );

FloatingActionButton primaryButton({
  required void Function() action,
  required Widget child,
  String? tooltip,
}) =>
    FloatingActionButton(
      tooltip: tooltip,
      elevation: 2,
      onPressed: action,
      backgroundColor: primary['background_color'],
      shape: const CircleBorder(),
      child: child,
    );
