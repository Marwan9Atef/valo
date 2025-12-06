import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:valo/view/valo.dart';

import 'core/init/observer_init.dart';

void main() {
  observerInit();
  runApp(DevicePreview(
      enabled: false,
      builder: (context) => const Valo()));
}

