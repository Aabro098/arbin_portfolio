import 'package:arbin_portfolio/Constants/data.dart';
import 'package:arbin_portfolio/Provider/current_state.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState = Provider.of<CurrentState>(context,listen: false);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Consumer<CurrentState>(
            builder: (context,_,__) {
              return Wrap(
                alignment: WrapAlignment.center,
                children: [
                  ...List.generate(
                    projects.length, 
                    (index)=>GestureDetector(
                      onDoubleTap: (){
                        if(projects[index].link !=null){
                          currentState.launchInBrowser(projects[index].link!);
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(16),
                          title: Text(
                            '[${index+1}] ${projects[index].title}',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: currentState.currentDevice == Devices.ios.iPad ? 32 : 22,
                            ),
                          ),
                          subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Description',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: currentState.currentDevice == Devices.ios.iPad ? 28 : 20,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                projects[index].status,
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: currentState.currentDevice == Devices.ios.iPad ? 26 : 19,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                projects[index].description,
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w300,
                                  fontSize: currentState.currentDevice == Devices.ios.iPad ? 26 : 19,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  )
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}