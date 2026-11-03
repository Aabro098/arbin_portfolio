import 'package:flutter/material.dart';

class ColorModel {
  ColorModel({
    required this.svgPath,
    required this.gradient,
    required this.color,
  });
  String svgPath;
  Gradient gradient;
  Color color;
}
