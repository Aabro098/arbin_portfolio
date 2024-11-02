import 'package:arbin_portfolio/Constants/data.dart';
import 'package:arbin_portfolio/Provider/current_state.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PhoneHomeScreen extends StatelessWidget {
  const PhoneHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState = Provider.of<CurrentState>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.only(top: 60.0),
      child: Column(
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.start,
            children: [
              ...List.generate(
                apps.length,
                (index)=>Container(
                  margin: const EdgeInsets.only(left: 20 , right : 20 ,top : 10 , bottom:  20),
                  child: Column(
                    children: [
                      Consumer<CurrentState>(
                        builder: (context,_,__) {
                          return CustomButton(
                            margin: const EdgeInsets.only(bottom: 6),
                            borderRadius: currentState.currentDevice == Devices.ios.iPhone13ProMax ? 8 : 24,
                            width: currentState.currentDevice == Devices.ios.iPad 
                              ? 120 
                              : currentState.currentDevice == Devices.ios.iPhone13ProMax ? 60 : 75,
                            height: currentState.currentDevice == Devices.ios.iPad 
                              ? 120 
                              : currentState.currentDevice == Devices.ios.iPhone13ProMax ? 60 : 75,
                            asset: apps[index].assetPath != null
                              ? ButtonAsset(
                                apps[index].assetPath!,
                                  width: currentState.currentDevice == Devices.ios.iPad ? 80 : 50, 
                                  height: currentState.currentDevice == Devices.ios.iPad ? 80 :50,
                                )
                              : null,
                            backgroundColor: apps[index].color,
                            onPressed: (){
                              if(apps[index].link != null){
                                currentState.launchInBrowser(apps[index].link!);
                              }else if(apps[index].screen!=null){
                                currentState.changePhoneScreen(apps[index].screen!,false , titleL: apps[index].title);
                              }
                            },
                            child:  apps[index].assetPath == null
                            ? Center(
                                child: Icon(
                                  apps[index].icon,
                                  size: currentState.currentDevice == Devices.ios.iPad ? 80 : 32,
                                  color: Colors.black,
                                ),
                              )
                            : null,
                          );
                        }
                      ),
                      Consumer<CurrentState>(
                        builder: (context,_,__) {
                          return SizedBox(
                            width: currentState.currentDevice == Devices.ios.iPad ? 120 : 60 ,
                            child: Center(
                              child: Text(
                                apps[index].title,
                                style: GoogleFonts.openSans(
                                  fontSize: currentState.currentDevice == Devices.ios.iPad ? 20 : 11,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                            ),
                          );
                        }
                      ),
                    ],
                  ),
                )
              )
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Text(
                    'Made with Flutter ! ',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize : 24,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  const SizedBox(width: 6),
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 32,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}