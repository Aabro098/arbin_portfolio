import 'package:arbin_portfolio/Screens/HomeScreen/phone_home_screen.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CurrentState extends ChangeNotifier{
  DeviceInfo currentDevice = Devices.ios.iPhone13ProMax;
  int knobSelected = 2;
  bool isMainScreen = true;
  String? title;

  Widget currentScreen = const PhoneHomeScreen();

  void changeSelectedDevice (DeviceInfo device){
    currentDevice = device;
    notifyListeners();
  }

  void changeGradient(int index){
    knobSelected = index;
    notifyListeners();
  }

  void changePhoneScreen(Widget change , bool isMain ,{String? titleL}){
    currentScreen = change;
    isMainScreen = isMain;
    title = titleL;
    notifyListeners();
  }

  Future<void> launchInBrowser(String link) async{
    Uri url = Uri.parse(link);
    if(await canLaunchUrl(url)){
      await launchUrl(url , mode: LaunchMode.externalApplication);
    }else{
      throw Exception('something went wrong');
    }
  }
}