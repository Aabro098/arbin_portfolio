import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:arbin_portfolio/Provider/current_state.dart';
import 'package:arbin_portfolio/Screens/HomeScreen/phone_home_screen.dart';

class ScreenWrapper extends StatelessWidget {
  final Widget childG;
  const ScreenWrapper({
    super.key,
    required this.childG,
  });

  @override
  Widget build(BuildContext context) {
    CurrentState instance = Provider.of<CurrentState>(context,listen: false);
    return Column(
      children: [
        Consumer<CurrentState>(
          builder: (context,_,__) {
            if(instance.isMainScreen == false){
              return Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Text(
                      'title',
                      style: GoogleFonts.inter(fontSize: 18),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close), 
                      onPressed: () {
                        instance.changePhoneScreen(const PhoneHomeScreen(),true);
                      },
                    )
                  ],
                ),
              );
            }
            return Container();
          }
        ),
        Expanded(child: childG)
      ],
    );
  }
}
