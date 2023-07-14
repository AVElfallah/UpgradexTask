import 'package:flutter/material.dart';

extension PlatformCustomize on BuildContext {
  bool get isWeb => !(Theme.of(this).platform == TargetPlatform.android ||
      Theme.of(this).platform == TargetPlatform.iOS);
}
