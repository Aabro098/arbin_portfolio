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
    final currentState = Provider.of<CurrentState>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Column(
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              ...List.generate(
                apps.length,
                (index) => Container(
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                    bottom: 20,
                  ),
                  child: Column(
                    children: [
                      Consumer<CurrentState>(
                        builder: (context, _, __) {
                          return CustomButton(
                            margin: const EdgeInsets.only(bottom: 6),
                            borderRadius: currentState.currentDevice ==
                                    Devices.ios.iPhone13ProMax
                                ? 8
                                : 16,
                            width:
                                currentState.currentDevice == Devices.ios.iPad
                                    ? 120
                                    : currentState.currentDevice ==
                                            Devices.ios.iPhone13ProMax
                                        ? 60
                                        : 60,
                            height:
                                currentState.currentDevice == Devices.ios.iPad
                                    ? 120
                                    : currentState.currentDevice ==
                                            Devices.ios.iPhone13ProMax
                                        ? 60
                                        : 60,
                            asset: apps[index].assetPath != null
                                ? ButtonAsset(
                                    apps[index].assetPath!,
                                    width: currentState.currentDevice ==
                                            Devices.ios.iPad
                                        ? 80
                                        : 40,
                                    height: currentState.currentDevice ==
                                            Devices.ios.iPad
                                        ? 80
                                        : 40,
                                  )
                                : null,
                            backgroundColor: apps[index].color,
                            onPressed: () async {
                              if (apps[index].link != null) {
                                await currentState
                                    .launchInBrowser(apps[index].link!);
                              } else if (apps[index].screen != null) {
                                currentState.changePhoneScreen(
                                  apps[index].screen!,
                                  isMain: false,
                                  titleL: apps[index].title,
                                );
                              }
                            },
                            child: apps[index].assetPath == null
                                ? Center(
                                    child: Icon(
                                      apps[index].icon,
                                      size: currentState.currentDevice ==
                                              Devices.ios.iPad
                                          ? 80
                                          : 32,
                                      color: Colors.black,
                                    ),
                                  )
                                : null,
                          );
                        },
                      ),
                      Consumer<CurrentState>(
                        builder: (context, _, __) {
                          return SizedBox(
                            width:
                                currentState.currentDevice == Devices.ios.iPad
                                    ? 120
                                    : 60,
                            child: Center(
                              child: Text(
                                apps[index].title,
                                style: GoogleFonts.openSans(
                                  fontSize: currentState.currentDevice ==
                                          Devices.ios.iPad
                                      ? 20
                                      : 11,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              child: Row(
                children: [
                  Text(
                    'Made with Flutter ! ',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(width: 6),
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 24,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
