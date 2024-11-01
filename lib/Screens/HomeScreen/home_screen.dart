import 'package:arbin_portfolio/Constants/data.dart';
import 'package:arbin_portfolio/Provider/current_state.dart';
import 'package:arbin_portfolio/Screens/HomeScreen/phone_home_wrapper.dart';
import 'package:arbin_portfolio/Widgets/frosted_container.dart';
import 'package:arbin_portfolio/Widgets/rain_cloud.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState = Provider.of<CurrentState>(context, listen: false);
    Size size = MediaQuery.of(context).size;
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
          const RainCloud(top: 20, isopposite: false),
          const RainCloud(top: 250, isopposite: true),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    children: [
                      FrostedContainer(height: 325, width: 247),
                      SizedBox(height: 10),
                      FrostedContainer(height: 175, width: 247),
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
                  Column(
                    children: [
                      FrostedContainer(
                        height: 325, 
                        width: 247,
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
                                      height: 52,
                                      width: 52,
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
                      ),
                      const SizedBox(height: 10),
                      const FrostedContainer(
                        height: 175, 
                        width: 247 , 
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
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