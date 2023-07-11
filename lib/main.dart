import 'package:flutter/material.dart';
import 'package:upgradex_task/router/router.dart';
import 'package:upgradex_task/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tas',
      theme: ThemeData(
        primaryColor: ProjectColors.customPink,
        scaffoldBackgroundColor: ProjectColors.customLightGray,
      ),
      onGenerateRoute: ProjectRouter().onRouting,
      initialRoute: ProjectRouter.login,
    );
  }
}
