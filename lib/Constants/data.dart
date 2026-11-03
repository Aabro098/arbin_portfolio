// Texts can be longer than 80 chars
// ignore_for_file: lines_longer_than_80_chars

import 'package:arbin_portfolio/Models/app_model.dart';
import 'package:arbin_portfolio/Models/color_model.dart';
import 'package:arbin_portfolio/Models/device_model.dart';
import 'package:arbin_portfolio/Models/education_model.dart';
import 'package:arbin_portfolio/Models/project_model.dart';
import 'package:arbin_portfolio/Models/skills_model.dart';
import 'package:arbin_portfolio/Screens/Mini%20Projects/About/about_screen.dart';
import 'package:arbin_portfolio/Screens/Mini%20Projects/Education/education.dart';
import 'package:arbin_portfolio/Screens/Mini%20Projects/Projects/projects.dart';
import 'package:arbin_portfolio/Screens/Mini%20Projects/Skills/skills.dart';
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
    svgPath: 'assets/images/cloudyBlue.svg',
    color: const Color(0xFF39A0ED),
    gradient: const LinearGradient(
      colors: [Color(0xFF001F3F), Color(0xFF39A0ED)],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ) as Gradient,
  ),
  ColorModel(
    svgPath: 'assets/images/cloudRed.svg',
    color: const Color(0xFF9C27B0),
    gradient: const LinearGradient(
      colors: [Color(0xFF9C27B0), Color(0xFFFF6F00)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ) as Gradient,
  ),
  ColorModel(
    svgPath: 'assets/images/cloudyBlue.svg',
    color: const Color(0xFF566573),
    gradient: const LinearGradient(
      colors: [Color(0xFF1C2833), Color(0xFF566573)],
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
    ) as Gradient,
  ),
  ColorModel(
    svgPath: 'assets/images/cloudRed.svg',
    color: const Color(0xFFFFA500),
    gradient: const LinearGradient(
      colors: [Color(0xFFFFF700), Colors.deepOrange],
      begin: Alignment.bottomRight,
      end: Alignment.topLeft,
    ) as Gradient,
  ),
  ColorModel(
    svgPath: 'assets/images/cloudyBlue.svg',
    color: const Color(0xFF3F51B5),
    gradient: const LinearGradient(
      colors: [
        Color(0xFF0D1B2A),
        Color(0xFF1A2A3D),
        Color(0xFF3A3E5B),
      ],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ) as Gradient,
  ),
  ColorModel(
    svgPath: 'assets/images/cloudRed.svg',
    color: const Color(0xFFFFD700),
    gradient: const LinearGradient(
      colors: [Color(0xFFFF00FF), Color(0xFFFFD700)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ) as Gradient,
  ),
];

List<AppModel> apps = [
  AppModel(
    title: 'About',
    color: Colors.orange,
    icon: Icons.person,
    screen: const AboutScreen(),
  ),
  AppModel(
    title: 'Skills',
    color: Colors.green,
    icon: Icons.code,
    screen: const Skills(),
  ),
  AppModel(
    title: 'Education',
    color: Colors.blue,
    icon: Icons.school,
    screen: const Education(),
  ),
  AppModel(
    title: 'Projects',
    color: Colors.yellow,
    icon: Icons.note,
    screen: const Projects(),
  ),
  AppModel(
    title: 'LinkedIn',
    color: Colors.white,
    assetPath: 'assets/icons/linkedin.png',
    link: linkedIn,
  ),
  AppModel(
    title: 'Facebook',
    color: Colors.white,
    assetPath: 'assets/icons/facebook.png',
    link: facebook,
  ),
  AppModel(
    title: 'Github',
    color: Colors.white,
    assetPath: 'assets/icons/github.png',
    link: github,
  ),
  AppModel(
    title: 'Insta',
    color: Colors.white,
    assetPath: 'assets/icons/instagram.png',
    link: insta,
  ),
  AppModel(
    title: 'Resume',
    color: Colors.lightBlue,
    assetPath: 'assets/icons/resume.png',
    link: resumeLink,
  ),
  AppModel(
    title: 'NyayaSaathi',
    color: Colors.white,
    assetPath: 'assets/logos/app_logo_nyayasaathi.jpg',
    link: 'https://play.google.com/store/apps/details?id=com.nyayasaathi.app',
  ),
  AppModel(
    title: 'Finco Customer',
    color: Colors.white,
    assetPath: 'assets/logos/app_logo_finco.png',
    link:
        'https://play.google.com/store/apps/details?id=com.finco.customer.app',
  ),
  AppModel(
    title: 'Matlynk User',
    color: Colors.black,
    assetPath: 'assets/logos/app_logo_matlynk.png',
    link: 'https://play.google.com/store/apps/details?id=com.matlynk.user',
  ),
  AppModel(
    title: 'MDesk Teachers',
    color: Colors.white,
    assetPath: 'assets/logos/app_logo_mdesk.png',
    link: 'https://play.google.com/store/apps/details?id=com.mdesk.teachers',
  ),
  AppModel(
    title: 'Lucky Birth',
    color: Colors.deepOrange,
    assetPath: 'assets/logos/app_logo_lucky.png',
    link: 'https://play.google.com/store/apps/details?id=com.luckybirth.app',
  ),
];

List<SkillsModel> skills = [
  SkillsModel(title: 'Flutter', color: Colors.cyan),
  SkillsModel(title: 'Dart', color: Colors.blue),
  SkillsModel(title: 'Node JS', color: Colors.green),
  SkillsModel(title: 'Python', color: Colors.yellow),
  SkillsModel(title: 'C/C++', color: Colors.purple.shade700),
  SkillsModel(title: 'SQL', color: Colors.black),
  SkillsModel(title: 'Provider', color: Colors.cyan),
  SkillsModel(title: 'Riverpod', color: Colors.blue),
  SkillsModel(title: 'State Management', color: Colors.green),
  SkillsModel(title: 'MVVM', color: Colors.yellow),
  SkillsModel(title: 'App Localization', color: Colors.purple.shade700),
  SkillsModel(title: 'Deep Linking', color: Colors.black),
  SkillsModel(title: 'Push Notifications', color: Colors.cyan),
  SkillsModel(title: 'Google Services', color: Colors.blue),
  SkillsModel(title: 'RESTful APIs', color: Colors.green),
  SkillsModel(title: 'Local Database', color: Colors.yellow),
  SkillsModel(title: 'App Localization', color: Colors.purple.shade700),
  SkillsModel(title: 'Multi-Theme Support', color: Colors.black),
  SkillsModel(title: 'Git', color: Colors.cyan),
  SkillsModel(title: 'Github', color: Colors.blue),
];

List<LanguageModel> language = [
  LanguageModel(title: 'Nepali', color: Colors.redAccent.shade700),
  LanguageModel(title: 'Hindi', color: Colors.deepOrange),
  LanguageModel(title: 'English', color: Colors.blueAccent),
];

List<EducationModel> education = [
  EducationModel(
    title: 'Khwopa Engineering College',
    education: 'Bachelor in Computer Engineering',
    location: 'Libali-8 , Bhaktapur',
    date: '2078 - 2082',
    bulletPoints: [
      'Relevant Coursework: Data Structures & Algorithms, Database Management Systems, Operating Systems, Computer Networks, Software Engineering, Artificial Intelligence, Mobile Application Development.',
    ],
  ),
  EducationModel(
    title: "Liverpool Int'l SS/College",
    education: '+2 course (Computer Science)',
    location: 'New Baneshwor,Kathmandu',
    date: '2075 - 2078',
    bulletPoints: [
      'Focused on Science, Mathematics and Computer building a strong foundation for engineering.',
    ],
  ),
  EducationModel(
    title: 'Chandani Secondary English School',
    education: 'SEE',
    location: 'Shankhamul,Lalitpur',
    date: '2062 - 2075',
    bulletPoints: ['QBASIC and C programming!!! '],
  ),
];

List<ProjectModel> projects = [
  ProjectModel(
    title: 'Material Lynk Delivery Agent and User App',
    description:
        'Developed a production-ready single-vendor logistics ecosystem utilizing Flutter and Riverpod. Delivered intuitive user ordering workflows, live rider navigation via Google Maps, and localized UI support across iOS and Android.',
    status: 'Released',
    link: 'https://play.google.com/store/apps/details?id=com.matlynk.user',
  ),
  ProjectModel(
    title: 'Finco Customer',
    description:
        'Developed a secure document management mobile app using Flutter and Provider for seamless client document uploading, verification, and tracking. ',
    status: 'Released',
    link:
        'https://play.google.com/store/apps/details?id=com.finco.customer.app',
  ),
  ProjectModel(
    title: 'न्यायसाथी - Justice Companion',
    description:
        'Architected a cross-platform accessibility-focused mobile app using Flutter and Provider connecting differently-abled individuals with verified pro-bono lawyers.',
    status: 'Released',
    link: 'https://play.google.com/store/apps/details?id=com.nyayasaathi.app',
  ),
  ProjectModel(
    title: 'Lucky Birth',
    description:
        'Built a cross-platform mobile application in Flutter & Dart designed for offline-first calculation of auspicious birth dates and time slots. Leveraged Provider for reactive state management, SQLite (sqflite) for local database storage.',
    status: 'Released',
    link: 'https://play.google.com/store/apps/details?id=com.luckybirth.app',
  ),
  ProjectModel(
    title: 'EcoScan',
    description:
        'This mobile application, developed with Flutter and a Node.js backend, promotes eco-friendly practices by sharing creative recycling ideas. Users can upload and share their recycling concepts, complete with images, allowing others to view, engage with, and gain inspiration from these ideas. The app also incorporates machine learning through an API to scan uploaded images, recognizing materials and suggesting relevant recycling ideas. This platform encourages community-driven sustainability by making it easy to discover and share innovative recycling solutions.',
    status: 'Not Released',
  ),
  ProjectModel(
    title: 'MDesk Teachers',
    description:
        'Engineered a multi-institute schedule and classroom management portal using Flutter and Provider for educators.',
    status: 'Released',
    link: 'https://play.google.com/store/apps/details?id=com.mdesk.teachers',
  ),
  ProjectModel(
    title: 'Skill Swap',
    description:
        'Developed a peer-to-peer skill exchange platform that enables users to teach and learn skills from each other. The platform includes an AI-powered chatbot to assist users, manage interactions, and improve the learning experience.',
    status: 'Not Released',
    link: 'https://github.com/Aabro098/skill_swap',
  ),
];

const String email = 'arbinstha71@gmail.com';
const String linkedIn = 'https://www.linkedin.com/in/arbinstha/';
const String github = 'https://github.com/Aabro098';
const String insta = 'https://www.instagram.com/arbin_sth/';
const String facebook = 'https://www.facebook.com/arbin.shrestha.9047/';
const String introduction =
    'Flutter Developer & Computer Engineer specializing in cross-platform mobile architecture, secure API integration, and system modernization. Demonstrated expertise in Riverpod, Provider, OAuth 2.0, Google Maps, and app localization. Skilled in leading mobile initiatives from technical design through Play Store/App Store deployment, ensuring reliable, high-performance user experiences.';
const String resumeLink =
    'https://drive.google.com/file/d/1fC2smPwyM9jbuXpqTlX502zlEospEV64/view?usp=sharing';
