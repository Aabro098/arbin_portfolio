import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedContainer extends StatelessWidget {
  final double height;
  final double width;
  final Widget? childG;
  const FrostedContainer({
    super.key,
    required this.height,
    required this.width, 
    this.childG
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX:7 , sigmaY: 7 ),
              child: SizedBox(
                height: height,
                width: width,
              ),
            ),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25)
                  )
                ],
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.5),
                    Colors.white.withOpacity(0.3)
                  ],
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: childG,
            )
          ],
        ),
      ),
    );
  }
}