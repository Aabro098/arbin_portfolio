import 'package:arbin_portfolio/Constants/data.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    ...List.generate(
                      skills.length, 
                      (index)=>Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5
                        ),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xffeff0e0),
                        ),
                        child: Center(
                          child: AutoSizeText(
                            skills[index],
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w300
                            ),
                            maxLines: 2,
                            maxFontSize: 12,
                            minFontSize : 18
                          ),
                        ),
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
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    ...List.generate(
                      languages.length, 
                      (index)=>Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5
                        ),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xffeff0e0),
                        ),
                        child: Center(
                          child: AutoSizeText(
                            languages[index],
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w300
                            ),
                            maxLines: 2,
                            maxFontSize: 12,
                            minFontSize : 18
                          ),
                        ),
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