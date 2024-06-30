import 'package:flutter/services.dart';

class OpenNativeView {
  static const platform = MethodChannel('dio_example/open_native_view');

  static Future<void> openNativeView() async {
    try {
      await platform.invokeMethod('openNativeView');
    } on PlatformException catch (e) {
      print("Error: '${e.message}'.");
    }
  }
}