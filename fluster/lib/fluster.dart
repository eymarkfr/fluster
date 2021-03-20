
import 'dart:async';

import 'package:flutter/services.dart';

class Fluster {
  static const MethodChannel _channel =
      const MethodChannel('fluster');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
