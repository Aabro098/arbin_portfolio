import 'package:arbin_portfolio/Constants/data.dart';
import 'package:arbin_portfolio/Provider/current_state.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState = Provider.of<CurrentState>(context,listen: false);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child : Consumer<CurrentState>(
            builder: (context,_,__) {
              return Wrap(
                alignment: WrapAlignment.center,
                children: [
                  ...List.generate(
                    education.length, 
                    (index)=>ListTile(
                      contentPadding: const EdgeInsets.all(16),
                      title: Text(
                        education[index].title,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: currentState.currentDevice == Devices.ios.iPad ? 32 : 22,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            education[index].education,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w300,
                              fontSize: currentState.currentDevice == Devices.ios.iPad ? 26 : 19,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            education[index].location,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w300,
                              fontSize: currentState.currentDevice == Devices.ios.iPad ? 26 : 19,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            education[index].date,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w300,
                              fontSize: currentState.currentDevice == Devices.ios.iPad ? 26 : 19,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          ...List.generate(
                            education[index].bulletPoints.length, 
                            (value)=>ListTile(
                              title: Text(
                                education[index].bulletPoints[value],
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: currentState.currentDevice == Devices.ios.iPad ? 26 : 19,
                                ),
                              ),
                            )  
                          )
                        ],
                      ),
                    )  
                  )
                ],
              );
            }
          )
        ),
      ),
    );
  }
}