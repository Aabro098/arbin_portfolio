import 'package:arbin_portfolio/Constants/data.dart';
import 'package:arbin_portfolio/Provider/current_state.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState = Provider.of<CurrentState>(context,listen:false);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    ...List.generate(
                      skills.length, 
                      (index)=>Consumer<CurrentState>(
                        builder: (context,_,__) {
                          return Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5
                            ),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: skills[index].color)
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  skills[index].title,
                                  style: GoogleFonts.inter(
                                    fontSize: currentState.currentDevice == Devices.ios.iPad ? 36 : 24,
                                    fontWeight: FontWeight.w300
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                      ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Languages",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold, 
                    fontSize: 32
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    ...List.generate(
                      language.length, 
                      (index)=>Consumer<CurrentState>(
                        builder: (context,_,__) {
                          return Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5
                            ),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: language[index].color)
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  language[index].title,
                                  style: GoogleFonts.inter(
                                    fontSize: currentState.currentDevice == Devices.ios.iPad ? 36 : 24,
                                    fontWeight: FontWeight.w300
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                      ))
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}