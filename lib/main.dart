import 'package:arbin_portfolio/Provider/current_state.dart';
import 'package:arbin_portfolio/Provider/theme_provider.dart';
import 'package:arbin_portfolio/Screens/HomeScreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => CurrentState()),
      ],
      child: const MaterialApp(
        title: 'Arbin Shrestha Portfolio',
        debugShowCheckedModeBanner: false,
        home: StartupScreen(),
      ),
    );
  }
}

class StartupScreen extends StatefulWidget {
  const StartupScreen({super.key});

  @override
  State<StartupScreen> createState() => _StartupScreenState();
}

class _StartupScreenState extends State<StartupScreen> {
  bool _showHome = false;

  @override
  void initState() {
    super.initState();
    Future<void>.delayed(const Duration(seconds: 3), () {
      if (mounted) setState(() => _showHome = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      child: _showHome
          ? const HomeScreen(key: ValueKey('home'))
          : const _SplashScreen(key: ValueKey('splash')),
    );
  }
}

class _SplashScreen extends StatelessWidget {
  const _SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001F3F),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF001F3F),
              Color(0xFF39A0ED),
              Color(0xFF566573),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Center(
            child: Lottie.asset(
              'assets/rive/robot_hello.json',
              fit: BoxFit.contain,
              repeat: true,
            ),
          ),
        ),
      ),
    );
  }
}
