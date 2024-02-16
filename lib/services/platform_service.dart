import 'dart:io';

import 'package:flutter/foundation.dart';

class PlatformService {
  void detectPlatform() {
    if (kIsWeb) {
      
    } else if (Platform.isAndroid) {
    } else if (Platform.isIOS) {
    } else if (Platform.isWindows) {
    } else if (Platform.isLinux) {
    } else if (Platform.isMacOS) {}
  }
}
