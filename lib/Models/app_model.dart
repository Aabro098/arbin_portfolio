import 'package:flutter/material.dart';

class AppModel {
  String title;
  String? assetPath;
  IconData? icon;
  Color color;
  Widget? screen;
  AppModel({
    required this.title,
    this.assetPath,
    this.icon,
    required this.color,
    this.screen,
  }) : assert(icon == null || assetPath == null);
}
