import 'package:arbin_portfolio/Provider/current_state.dart';
import 'package:arbin_portfolio/Provider/theme_provider.dart';
import 'package:arbin_portfolio/Screens/HomeScreen/home_screen.dart';
import 'package:flutter/material.dart';
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
        ChangeNotifierProvider(create: (context)=>ThemeProvider()),
        ChangeNotifierProvider(create: (context)=>CurrentState())
      ],
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}


