import 'dart:async';

import 'package:flutter/services.dart';

class Deviceinfo {
  static const MethodChannel _channel =
      const MethodChannel('deviceinfo');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
