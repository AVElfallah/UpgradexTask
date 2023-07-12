import 'package:flutter/material.dart';

import '../../../utils/assets.dart';
import '../components/bolt_icons.dart';
import '../components/line_widget.dart';

class CustomStepperWidget extends StatelessWidget {
  const CustomStepperWidget({
    super.key,
    this.maxSteps = 3,
  });
  final int? maxSteps;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Image.asset(
            ProjectAssets.comment,
            height: 75,
            width: 120,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 260,
          top: 32,
          child: Image.asset(
            ProjectAssets.crown,
            height: 75,
            width: 80,
            fit: BoxFit.fill,
          ),
        ),
        const Positioned(
          left: 22,
          top: 80.2,
          child: LineWidget(),
        ),
        const Positioned(
          left: 2,
          top: 100.2,
          child: Text(
            'Select',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const Positioned(
          left: 2,
          top: 118.2,
          child: Text(
            'shop for 7k\nto enroll',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ),
        const Positioned(
          left: 135,
          top: 100.2,
          child: Text(
            'Elite',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const Positioned(
          left: 115,
          top: 118.2,
          child: Text(
            'shop for 7k\nto enroll',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ),
        const Positioned(
          left: 295,
          top: 100.2,
          child: Text(
            'Icon',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const Positioned(
          left: 255,
          top: 118.2,
          child: Text(
            'shop for 7k\nto enroll',
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ),
        const Positioned(
          left: 160,
          top: 80.2,
          child: LineWidget(),
        ),
        const Positioned(
          top: 70,
          child: BoltIcons(
            count: 1,
          ),
        ),
        const Positioned(
          left: 130,
          top: 70,
          child: BoltIcons(
            count: 2,
          ),
        ),
        const Positioned(
          left: 270,
          top: 70,
          child: BoltIcons(
            count: 3,
          ),
        ),
      ],
    );
  }
}
