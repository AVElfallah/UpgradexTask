import 'package:flutter/material.dart';
import 'package:upgradex_task/router/router.dart';
import 'package:upgradex_task/utils/colors.dart';
import 'package:upgradex_task/utils/helpers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task',
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ProjectColors.customPink,
        scaffoldBackgroundColor: ProjectColors.customLightGrey,
      ),
      onGenerateRoute: ProjectRouter().onRouting,
      initialRoute: ProjectRouter.login,
    );
  }
}
