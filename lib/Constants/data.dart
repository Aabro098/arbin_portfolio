import 'package:arbin_portfolio/Models/app_model.dart';
import 'package:arbin_portfolio/Models/color_model.dart';
import 'package:arbin_portfolio/Models/device_model.dart';
import 'package:arbin_portfolio/Screens/Mini%20Projects/About/about_screen.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';

const double baseHeight = 790;
const double baseWidth = 1440;

List<DeviceModel> devices = [
  DeviceModel(device: Devices.android.onePlus8Pro, data: Icons.android),
  DeviceModel(device: Devices.ios.iPhone13ProMax, data: Icons.apple),
  DeviceModel(device: Devices.ios.iPad, data: Icons.tablet),
];


List<ColorModel> colorPalette = [
  ColorModel(
  svgPath: "assets/images/cloudyBlue.svg",
  color: const Color(0xFF39A0ED),  
  gradient: const LinearGradient(
    colors: [Color(0xFF001F3F), Color(0xFF39A0ED)],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  ) as Gradient,
),

  ColorModel(
    svgPath: "assets/images/cloudRed.svg",
    color: const Color(0xFF9C27B0), 
    gradient: const LinearGradient(
      colors: [Color(0xFF9C27B0), Color(0xFFFF6F00)],  
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ) as Gradient,
  ),

  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xFF566573),  
    gradient: const LinearGradient(
      colors: [Color(0xFF1C2833), Color(0xFF566573)],  
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
    ) as Gradient,
  ),

  ColorModel(
    svgPath: "assets/images/cloudRed.svg",
    color: const Color(0xFFFFA500),  
    gradient: const LinearGradient(
      colors: [Color(0xFFFFF700), Colors.deepOrange],  
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
    ) as Gradient,
  ),

  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xFF3F51B5),
    gradient: const LinearGradient(
      colors:[
        Color(0xFF0D1B2A), 
        Color(0xFF1A2A3D), 
        Color(0xFF3A3E5B),
      ],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ) as Gradient,
  ),

  ColorModel(
    svgPath: "assets/images/cloudRed.svg",
    color: const Color(0xFFFFD700),  
    gradient: const LinearGradient(
      colors: [Color(0xFFFF00FF), Color(0xFFFFD700)],  
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
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
const String introduction = 'A dedicated and proactive Computer Engineering student with a few hands-on experience in Flutter development. Seeking an internship position to apply my skills in mobile app development, contribute toinnovative projects, and gain professional experience in a dynamic environment.';
const String resumeLink = 'https://drive.google.com/file/d/1fC2smPwyM9jbuXpqTlX502zlEospEV64/view?usp=sharing';



