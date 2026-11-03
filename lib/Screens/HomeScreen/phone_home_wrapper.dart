import 'package:arbin_portfolio/Provider/current_state.dart';
import 'package:arbin_portfolio/Screens/HomeScreen/phone_home_screen.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScreenWrapper extends StatelessWidget {
  const ScreenWrapper({
    required this.childG,
    super.key,
  });
  final Widget childG;

  @override
  Widget build(BuildContext context) {
    final instance = Provider.of<CurrentState>(context, listen: false);
    return Column(
      children: [
        Consumer<CurrentState>(
          builder: (context, _, __) {
            if (!instance.isMainScreen) {
              return Container(
                color: Colors.white,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Row(
                  children: [
                    Text(
                      instance.title ?? '',
                      style: GoogleFonts.inter(
                        fontSize: instance.currentDevice == Devices.ios.iPad
                            ? 36
                            : 26,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        instance.changePhoneScreen(
                          const PhoneHomeScreen(),
                          isMain: true,
                        );
                      },
                    ),
                  ],
                ),
              );
            }
            return Container();
          },
        ),
        Expanded(
          child: Container(
            child: childG,
          ),
        ),
      ],
    );
  }
}
