import 'package:arbin_portfolio/Models/app_model.dart';
import 'package:arbin_portfolio/Models/color_model.dart';
import 'package:arbin_portfolio/Models/device_model.dart';
import 'package:arbin_portfolio/Screens/Mini%20Projects/About/about_screen.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';

List<DeviceModel> devices = [
  DeviceModel(device: Devices.android.onePlus8Pro, data: Icons.android),
  DeviceModel(device: Devices.ios.iPhone13ProMax, data: Icons.apple),
  DeviceModel(device: Devices.ios.iPad, data: Icons.tablet),
];

List<ColorModel> colorPalette = [
  ColorModel(
    svgPath: "assets/images/cloudRed.svg",
    gradient: const LinearGradient(
      colors: [Colors.yellowAccent, Colors.deepOrange],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ) as Gradient,
    color: Colors.yellowAccent,
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.blue,
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      colors: [Colors.blue, Colors.black45],
    ) as Gradient,
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xff00d6ca),
    gradient: const LinearGradient(
      colors: [Color(0xff00ebd5), Color(0xff293474)],
      stops: [0, 1],
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
    ) as Gradient
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xff123cd1),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(-0.31, 0.95),
      colors: [Color(0xFF1042F4), Color(0x00203EA6)],
    ) as Gradient,
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.purple,
    gradient: const LinearGradient(
      colors: [Color(0xffc95edb), Colors.black12],
      stops: [0, 1],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ) as Gradient,
  ),
  ColorModel(
    svgPath: "assets/images/cloudRed.svg",
    color: const Color(0xfff35a32),
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Colors.indigo, Colors.deepOrange], 
    ) as Gradient,
  ),
];

List<AppModel> apps = [
  AppModel(title: 'About', color: Colors.white , icon: Icons.ac_unit_outlined , screen: const AboutScreen()),
  AppModel(title: 'Skills', color: Colors.white , icon: Icons.ac_unit_outlined),
  AppModel(title: 'Education', color: Colors.white , icon: Icons.ac_unit_outlined),
  AppModel(title: 'LinkedIn', color: Colors.white , icon: Icons.ac_unit_outlined , link: linkedIn),
  AppModel(title: 'Facebook', color: Colors.white , icon: Icons.ac_unit_outlined , link : facebook),
  AppModel(title: 'Github', color: Colors.white , icon: Icons.ac_unit_outlined , link: github),
  AppModel(title: 'Resume', color: Colors.white , icon: Icons.ac_unit_outlined , link: resumeLink),
];

const String email = 'arbinstha71@gmail.com';
const String linkedIn = 'https://www.linkedin.com/in/arbinstha/';
const String github = 'https://github.com/Aabro098';
const String facebook = 'https://www.facebook.com/arbin.shrestha.9047/';
const String introduction = 'A dedicated and proactive Computer Engineering student \n with a few hands-on experience in Flutter development. \nSeeking an internship position to apply my skills in mobile app development, \ncontribute toinnovative projects, and gain professional experience in a dynamic environment';
const String resumeLink = 'https://drive.google.com/file/d/1fC2smPwyM9jbuXpqTlX502zlEospEV64/view?usp=sharing';



