import 'package:flutter/material.dart';

class ProjectColors {
  ProjectColors._();
  static final ProjectColors _instance = ProjectColors._();
  factory ProjectColors() => _instance;

  static const Color customPink = Color(0xFFff3f6c);
  static const Color customDark = Color(0xFF22222e);
  static const Color customGray = Color(0xFF5c6a80);
  static const Color customLightGray = Color(0xFFe8d5fa);
  static const Color customAmber = Color(0xFFe7a434);
}
