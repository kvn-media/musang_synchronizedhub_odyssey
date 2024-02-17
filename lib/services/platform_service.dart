import 'dart:io';

import 'package:flutter/foundation.dart';

class PlatformService {
  void detectPlatform() {
    if (kIsWeb) {
      print("Running on Web");
    } else if (Platform.isAndroid) {
      print("Running on Android");
    } else if (Platform.isIOS) {
      print("Running on iOS");
    } else if (Platform.isWindows) {
      print("Running on Windows");
    } else if (Platform.isLinux) {
      print("Running on Linux");
    } else if (Platform.isMacOS) {
      print("Running on macOS");
    }
  }
}
