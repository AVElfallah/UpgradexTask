import 'dart:ui';

import 'package:flutter/material.dart';

double getScreenSize(width) {
  if (width >= 1200) {
    return 0.28;
  } else if (width >= 1000) {
    return 0.38;
  } else if (width >= 800) {
    return 0.68;
  } else if (width >= 600) {
    return 0.92;
  } else if (width >= 500) {
    return 0.92;
  } else if (width >= 400) {
    return 0.92;
  } else {
    return 0.92;
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}
