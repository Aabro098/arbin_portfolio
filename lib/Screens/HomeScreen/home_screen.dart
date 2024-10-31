
import 'package:arbin_portfolio/Constants/data.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [
                  Colors.blue,Colors.black45
                ]
              )
            ),
          ),
          SvgPicture.asset(
            "assets/imaages/cloudBlue.svg",
            height: size.height,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height - 100,
                    child: DeviceFrame(
                      device: Devices.ios.iPhone13, 
                      screen: Container(
                        color: Colors.red,
                        child: const Center(
                          child: Text(
                            'Hello World',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  ...List.generate(
                    devices.length,
                    (index)=>CustomButton(
                      isThreeD: true,
                      shadowColor: Colors.white,
                      backgroundColor: Colors.black,
                      animate: true,
                      height: 38,
                      width: 38,
                      child: Center(
                        child: Icon(
                          devices[index].data , 
                          color: Colors.white
                        ),
                      ),
                      onPressed: (){  

                      }
                    )
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}