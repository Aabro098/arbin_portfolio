import 'package:arbin_portfolio/Constants/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1)
            ),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    'https://scontent.fktm1-1.fna.fbcdn.net/v/t39.30808-6/437671875_1633829140717838_4498262281753380743_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=8QKlU-MD0pYQ7kNvgF1FYpi&_nc_zt=23&_nc_ht=scontent.fktm1-1.fna&_nc_gid=ALmUIxl0G-2XlglmyezOJyR&oh=00_AYD_OX0RnW381VtwmstCn_57s_TDzSG-WJmAyBA9_mHZUw&oe=67292A32'
                  ),
                ),
                Text(
                  'Hi, I am Arbin Shrestha',
                  style: GoogleFonts.openSans(fontSize: 20 , fontWeight: FontWeight.w500),
                ),
                Text(
                  introduction,
                  style: GoogleFonts.openSans(fontSize: 16 , fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}