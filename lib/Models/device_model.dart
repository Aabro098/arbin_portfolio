import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';

class DeviceModel {
  DeviceModel({
    required this.device,
    required this.data,
  });
  DeviceInfo device;
  IconData data;
}
