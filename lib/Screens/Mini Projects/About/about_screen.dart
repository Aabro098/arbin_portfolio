import 'package:arbin_portfolio/Constants/data.dart';
import 'package:arbin_portfolio/Provider/current_state.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState instance = Provider.of<CurrentState>(context,listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Consumer<CurrentState>(
          builder: (context,_,__) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1)
              ),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: instance.currentDevice == Devices.ios.iPad ? 120 : 80,
                    backgroundImage: const AssetImage("assets/images/profile.jpg"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Hi, I am Arbin Shrestha',
                    style: GoogleFonts.openSans(fontSize: instance.currentDevice == Devices.ios.iPad ? 32 : 24 , fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    introduction,
                    style: GoogleFonts.openSans(fontSize: instance.currentDevice == Devices.ios.iPad ? 28 : 20 , fontWeight: FontWeight.normal),
                  )
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}