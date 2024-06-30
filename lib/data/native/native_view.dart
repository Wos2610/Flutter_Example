import 'package:flutter/services.dart';

class NativeView {
  static const platform = MethodChannel('dio_example/native_view');

  static Future<String> showNativeView() async {
    String batteryLevel;
    try {
      final int result = await platform.invokeMethod('showBattery');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }
    return batteryLevel;
  }
}