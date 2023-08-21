import '../styles/global_style.dart';
import 'package:flutter/material.dart';

AppBar bar({required String title}) => AppBar(
      backgroundColor: primary['background_color'],
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: primary['color'],
        ),
      ),
    );
