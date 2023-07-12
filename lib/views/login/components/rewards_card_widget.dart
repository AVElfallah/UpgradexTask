import 'package:flutter/material.dart';

import '../../../utils/assets.dart';
import '../../../utils/colors.dart';

class RewardsCardWidget extends StatelessWidget {
  const RewardsCardWidget(
      {super.key, this.text = '', this.image = ProjectAssets.fans});
  final String? text;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      color: Colors.white,
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image!,
            fit: BoxFit.fill,
            height: 300,
          ),
          Text(
            text!,
            style: const TextStyle(
              fontSize: 20,
              color: ProjectColors.customGrey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
