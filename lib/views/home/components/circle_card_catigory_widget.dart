import 'dart:math';

import 'package:flutter/material.dart';

import '../../../utils/assets.dart';

class CircleCardCatigoryWidget extends StatefulWidget {
  const CircleCardCatigoryWidget({super.key});

  @override
  State<CircleCardCatigoryWidget> createState() =>
      _CircleCardCatigoryWidgetState();
}

class _CircleCardCatigoryWidgetState extends State<CircleCardCatigoryWidget> {
  final assets = [
    ProjectAssets.dealOfTheDay1,
    ProjectAssets.dealOfTheDay2,
    ProjectAssets.dealOfTheDay3,
    ProjectAssets.dealOfTheDay4,
    ProjectAssets.dealOfTheDay5,
    ProjectAssets.dealOfTheDay6,
    ProjectAssets.dealOfTheDay7,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                assets[Random().nextInt(assets.length)],
              ),
              fit: BoxFit.fill,
            ),
          ),
          height: 160,
          width: 160,
        ),
        const Text(
          'Kurta Sets',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
