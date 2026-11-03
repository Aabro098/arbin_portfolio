import 'package:flutter/material.dart';

class AppModel {
  AppModel({
    required this.title,
    required this.color,
    this.assetPath,
    this.icon,
    this.screen,
    this.link,
  }) : assert(
         icon == null || assetPath == null,
         'An app cannot have both an icon and an asset path.',
       );
  String title;
  String? assetPath;
  IconData? icon;
  Color color;
  Widget? screen;
  String? link;
}
