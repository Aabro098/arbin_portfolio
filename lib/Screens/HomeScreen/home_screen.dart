import 'package:arbin_portfolio/Constants/data.dart';
import 'package:arbin_portfolio/Provider/current_state.dart';
import 'package:arbin_portfolio/Provider/theme_provider.dart';
import 'package:arbin_portfolio/Screens/HomeScreen/phone_home_wrapper.dart';
import 'package:arbin_portfolio/Widgets/frosted_container.dart';
import 'package:arbin_portfolio/Widgets/rain_cloud.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState = Provider.of<CurrentState>(context, listen: false);
    ThemeProvider theme = Provider.of<ThemeProvider>(context, listen: false);

    Size size = MediaQuery.of(context).size;
    theme.size = MediaQuery.of(context).size;
    theme.widthRatio = theme.size.width / baseWidth;
    theme.heightRatio = theme.size.height / baseHeight;

    bool phone = false;
    if (size.width < 800) {
      phone = true;
    }
    return Scaffold(
      body: Stack(
        children: [
          Selector<CurrentState , int>(
            selector: (context , provider)=>provider.knobSelected,
            builder: (context , __ , _){
              return Container(
                decoration: BoxDecoration(
                  gradient: colorPalette[currentState.knobSelected].gradient
                ),
              );
            }, 
          ),
          Selector<CurrentState , int>(
            selector: (context , provider)=>provider.knobSelected,
            builder: (context , __ , _){
              return SvgPicture.asset(
                colorPalette[currentState.knobSelected].svgPath,
                height: size.height,
                fit: BoxFit.cover,
              );
            }, 
          ),  
          size.height > 600 ? const RainCloud(top: 50, isopposite: false) : Container(),
          size.height > 600 ? const RainCloud(top: 270, isopposite: true) : Container(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  phone
                  ? Container() 
                    : Column(
                      children: [
                        Transform(
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY(-0.07),
                          alignment: Alignment.bottomCenter,  
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            margin: EdgeInsets.only(top: 0, bottom: 10 * theme.heightRatio),
                            child: FrostedContainer(
                              height: 395 * theme.heightRatio,
                              width: 247.5 * theme.widthRatio,
                              childG: Transform(
                                transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.01),
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: AutoSizeText(
                                              'Arbin Shrestha',
                                              style: GoogleFonts.exo(
                                                fontSize: 32,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold
                                              ),
                                              maxFontSize: 32,
                                              minFontSize: 15,
                                              maxLines: 2,
                                            ).animate().fadeIn(
                                              delay: .8.seconds,
                                              duration: .7.seconds,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ).animate().fadeIn(
                              duration: .8.seconds,
                              delay: .7.seconds
                            ),
                          )
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Transform(
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.009999)
                            ..rotateY(-0.07),
                            alignment: Alignment.topCenter,
                          child: FrostedContainer(
                            onPressed: () {
                              currentState.launchInBrowser(facebook);
                            },
                            height: 175.5 * theme.heightRatio,
                            width: 245 * theme.widthRatio,
                            childG: Center(
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/icons/facebook.svg",
                                      width: 70 *
                                        theme.widthRatio *
                                        theme.heightRatio,
                                      height: 70 *
                                        theme.widthRatio *
                                        theme.heightRatio,
                                    ),
                                    SizedBox(
                                      height: 10 * theme.heightRatio,
                                    ),
                                    Flexible(
                                      child: AutoSizeText(
                                        "Let's Connect",
                                        style: GoogleFonts.exo(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 28 *
                                            theme.widthRatio *
                                            theme.heightRatio,
                                        ),
                                        maxLines: 1,
                                        maxFontSize: 28,
                                        minFontSize: 15,
                                      ).animate().fadeIn(
                                        delay: .7.seconds,
                                        duration: .8.seconds
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ).animate().fadeIn(
                            delay: .7.seconds,
                            duration: .8.seconds
                          )
                        ),
                      ],
                    ),
                  SizedBox(
                    height: size.height - 120,
                    child: Consumer<CurrentState>(
                      builder: (context, _, __) {
                        return DeviceFrame(
                          device: currentState.currentDevice,
                          screen: Container(
                            decoration: BoxDecoration(
                              gradient: colorPalette[currentState.knobSelected].gradient,
                            ),
                            child: ScreenWrapper(childG:  currentState.currentScreen)
                          )
                        );
                      },
                    ),
                  ),
                  phone 
                  ? Container()
                    : Column(
                      children: [
                        Transform(
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.01)
                            ..rotateY(0.06),
                          alignment: Alignment.bottomCenter,
                          child: FrostedContainer(
                            height: 395 * theme.heightRatio,
                            width: 247.5 * theme.widthRatio,
                            childG: Center(
                              child: Wrap(
                                alignment: WrapAlignment.start,
                                children: [
                                  ...List.generate(
                                    colorPalette.length ,
                                    (index)=>Consumer<CurrentState>(
                                      builder: (context , __ ,_) {
                                        return CustomButton(
                                          margin: const EdgeInsets.all(12.0),
                                          isThreeD: true,
                                          animate: true,
                                          height: 50 * theme.widthRatio,
                                          width: 50 * theme.widthRatio,
                                          borderRadius: 100,
                                          shadowColor: Colors.white,
                                          pressed: currentState.knobSelected == index 
                                            ? Pressed.pressed 
                                            : Pressed.notPressed,
                                          backgroundColor: colorPalette[index].color,
                                          onPressed: (){
                                            currentState.changeGradient(index);
                                          },
                                        );
                                      }
                                    )
                                  )
                                ],
                              ),
                            )
                          ).animate().fadeIn(
                            delay: .7.seconds,
                            duration: .8.seconds
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Transform(
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.00999)
                            ..rotateY(0.06),
                          alignment: Alignment.topCenter,
                          child: FrostedContainer(
                            height: 175.5 * theme.heightRatio,
                            width: 245 * theme.widthRatio,
                            childG: Center(
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AutoSizeText(
                                      '“Programming isn’t about what you know; it’s about what you can figure out.”',
                                      style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300
                                      ),
                                      maxFontSize: 24,
                                      minFontSize: 10,
                                      maxLines: 4,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: AutoSizeText(
                                        '-Chris Pine',
                                        style: GoogleFonts.inter(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500
                                        ),
                                        maxFontSize: 16,
                                        minFontSize: 8,
                                        maxLines: 1,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ).animate().fadeIn(
                            delay: .7.seconds,
                            duration: .8.seconds
                          )
                        ),
                      ],
                    ),
                ],
              ),
              SizedBox(
                height: 15 * theme.heightRatio,
              ),
              Row(
                children: [
                  const Spacer(), 
                  ...List.generate(
                    devices.length,
                    (index) => [
                      Selector<CurrentState, DeviceInfo>(
                        selector: (context, provider) => provider.currentDevice,
                        builder: (context, _, __) {
                          return CustomButton(
                            isThreeD: true,
                            shadowColor: Colors.white,
                            backgroundColor: Colors.black,
                            animate: true,
                            height: 38,
                            borderRadius: 100,
                            width: 38,
                            pressed: currentState.currentDevice == devices[index].device
                              ? Pressed.pressed
                              : Pressed.notPressed,
                            child: Center(
                              child: Icon(
                                devices[index].data,
                                color: Colors.white
                              ),
                            ),
                            onPressed: () {
                              currentState.changeSelectedDevice(devices[index].device);
                            }
                          );
                        }
                      ),
                      const Spacer(), 
                    ],
                  ).expand((widgets) => widgets)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}