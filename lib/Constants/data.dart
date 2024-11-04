import 'package:arbin_portfolio/Models/app_model.dart';
import 'package:arbin_portfolio/Models/color_model.dart';
import 'package:arbin_portfolio/Models/device_model.dart';
import 'package:arbin_portfolio/Models/education_model.dart';
import 'package:arbin_portfolio/Models/project_model.dart';
import 'package:arbin_portfolio/Models/skills_model.dart';
import 'package:arbin_portfolio/Screens/Mini%20Projects/About/about_screen.dart';
import 'package:arbin_portfolio/Screens/Mini%20Projects/Projects/projects.dart';
import 'package:arbin_portfolio/Screens/Mini%20Projects/Skills/skills.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';

import '../Screens/Mini Projects/Education/education.dart';

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
  AppModel(title: 'About', color: Colors.orange , icon: Icons.person , screen: const AboutScreen()),
  AppModel(title: 'Skills', color: Colors.green , icon: Icons.code , screen: const Skills()),
  AppModel(title: 'Education', color: Colors.blue , icon: Icons.school, screen : const Education()),
  AppModel(title: 'Projects', color: Colors.yellow , icon: Icons.note, screen : const Projects()),
  AppModel(title: 'LinkedIn', color: Colors.white , assetPath: "assets/icons/linkedin.png" , link: linkedIn),
  AppModel(title: 'Facebook', color: Colors.white , assetPath: "assets/icons/facebook.png" , link : facebook),
  AppModel(title: 'Github', color: Colors.white , assetPath: "assets/icons/github.png" , link: github),
  AppModel(title: 'Insta', color: Colors.white , assetPath: "assets/icons/instagram.png" , link: insta),
  AppModel(title: 'Resume', color: Colors.lightBlue , assetPath: "assets/icons/resume.png" , link: resumeLink),
];

List<SkillsModel> skills = [
  SkillsModel(title: 'Flutter' , color: Colors.cyan),
  SkillsModel(title: 'Dart' , color: Colors.blue),
  SkillsModel(title: 'Node JS' , color: Colors.green),
  SkillsModel(title: 'Python' , color: Colors.yellow),
  SkillsModel(title: 'C/C++' , color: Colors.purple.shade700),
  SkillsModel(title: 'SQL' , color: Colors.black)
];

List<LanguageModel> language = [
  LanguageModel(title: 'Nepali', color: Colors.redAccent.shade700),
  LanguageModel(title: 'Hindi', color: Colors.deepOrange),
  LanguageModel(title: 'English', color: Colors.blueAccent),
];


List<EducationModel> education =[
  EducationModel(
    title: 'Chandani Secondary English School', 
    education: 'SEE', 
    location: 'Shankhamul,Lalitpur', 
    date: '2062 - 2075',
    bulletPoints: [
      'Starting of the QBASIC programming !!! '
    ]
  ),
  EducationModel(
    title: "Liverpool Int'l SS/College", 
    education: '+2 course (Computer Science)', 
    location: 'New Baneshwor,Kathmandu', 
    date: '2075 - 2078',
    bulletPoints: [
      'Some of the best years of college life !!!',
    ]
  ),
  EducationModel(
    title: "Khwopa Engineering College", 
    education: 'Bachelor in Computer Engineering', 
    location: 'Libali-8 , Bhaktapur', 
    date: '2075 - Present',
    bulletPoints: [
      "Currently in the third year of my college !!!",
    ]
  ),
];

List<ProjectModel> projects = [
  ProjectModel(
    title: 'Note App', 
    description: 'Note App (Flutter) This Note App, developed using Flutter , allows users to efficiently manage their notes. Users can add, edit, update, and delete notes with ease. Additionally, the app features a "copy note" functionality, enabling users to quickly duplicate existing notes. The responsive design ensures a smooth user experience across various devices.', 
    status: 'Not Released', 
    link: 'https://github.com/Aabro098/notes_app_flutter'
  ),
  ProjectModel(
    title: 'Server Note App', 
    description: 'Note App (Django) This Note App uses the Django backend ,it allows users to efficiently manage their notes. Users can add, edit, update, and delete notes with ease. Additionally, the app features a "copy note" functionality, enabling users to quickly duplicate existing notes.', 
    status: 'Not Released', 
    link: 'https://github.com/Aabro098/CRUD-BackEnd_Django'
  ),
  ProjectModel(
    title: 'Facebook Clone (DashBoard)', 
    description: 'Facebook Clone App (Responsive) This Facebook clone app, built using Flutter, provides a seamless and responsive social networking experience across various devices. The app features a modern and intuitive user interface, replicating the core functionalities of Facebook. Users can sign up, create profiles, post updates, like, comment, and share content. Additionally, the app includes real-time notifications, a news feed, friend requests, and messaging capabilities. Designed with responsiveness in mind, the app ensures a smooth user experience on both mobile and web platforms, adapting to different screen sizes and orientations.',
    status: 'Not Released', 
    link: 'https://github.com/Aabro098/facebook_clone'
  ),
  ProjectModel(
    title: 'Edventure', 
    description: 'This mobile application, built with Flutter and powered by a Node.js backend, facilitates an interactive learning environment for teachers and students. The app enables students to join classes with teachers according to mutually agreed terms and schedules. It features integrated live chat, allowing real-time communication between students and instructors to enhance engagement and streamline class coordination. The platform is designed to support smooth, responsive user experiences, making it easy to manage and participate in virtual learning sessions on the go.',
    status: 'Not Released', 
  ),
  ProjectModel(
    title: 'EcoScan', 
    description: 'This mobile application, developed with Flutter and a Node.js backend, promotes eco-friendly practices by sharing creative recycling ideas. Users can upload and share their recycling concepts, complete with images, allowing others to view, engage with, and gain inspiration from these ideas. The app also incorporates machine learning through an API to scan uploaded images, recognizing materials and suggesting relevant recycling ideas. This platform encourages community-driven sustainability by making it easy to discover and share innovative recycling solutions.', 
    status: 'Not Released', 
  ),
  ProjectModel(
    title: 'Portfolio', 
    description: 'This portfolio app, built using Flutter, showcases my skills, projects, and professional experience in a visually engaging and interactive format. It includes sections for personal details, project highlights, skills, and contact information, all optimized for smooth, responsive performance across devices. The app demonstrates my expertise in mobile development and UI design, providing potential clients and employers with a dynamic and easily navigable portfolio experience.', 
    status: 'Released', 
    link: 'https://github.com/Aabro098/arbin_portfolio'
  ),
  ProjectModel(
    title: 'Flappy Bird', 
    description: 'Flappy Bird Game (Flutter & Flame Engine) This Flappy Bird game, created using Flutter and the Flame engine, delivers an engaging and nostalgic gaming experience. Players navigate a bird through a series of obstacles by tapping the screen to keep it flying. The game features smooth animations, responsive controls, and an increasing difficulty level that challenges players as they progress. The use of the Flame engine ensures efficient performance and a seamless gameplay experience on various devices.',
    status: 'Not Released', 
    link: 'https://github.com/Aabro098/flappy_bird'
  ),
];

const String email = 'arbinstha71@gmail.com';
const String linkedIn = 'https://www.linkedin.com/in/arbinstha/';
const String github = 'https://github.com/Aabro098';
const String insta = 'https://www.instagram.com/arbin_sth/';
const String facebook = 'https://www.facebook.com/arbin.shrestha.9047/';
const String introduction = 'A dedicated and proactive Computer Engineering student with a few hands-on experience in Flutter development. Seeking an internship position to apply my skills in mobile app development, contribute toinnovative projects, and gain professional experience in a dynamic environment.';
const String resumeLink = 'https://drive.google.com/file/d/1fC2smPwyM9jbuXpqTlX502zlEospEV64/view?usp=sharing';



