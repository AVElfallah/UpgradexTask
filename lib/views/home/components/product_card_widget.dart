import 'package:flutter/material.dart';

import '../../../utils/assets.dart';
import '../../../utils/colors.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
    this.sealPrice,
    this.price,
    this.proudctImageAssets = ProjectAssets.dealOfTheDay1,
    this.proudctName = 'Kurta Sets',
  });
  final double? sealPrice;
  final double? price;
  final String? proudctImageAssets;
  final String? proudctName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 210,
      margin: const EdgeInsets.only(left: 15),
      color: ProjectColors.customLightPink,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            proudctImageAssets ?? ProjectAssets.dealOfTheDay1,
            height: 220,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          const Spacer(),
          Text(
            proudctName ?? 'Kurta Sets'.toUpperCase(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: ProjectColors.customDark,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                sealPrice?.toString() ?? '₹999',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: ProjectColors.customDark,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Text(
                price?.toString() ?? '₹499',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: ProjectColors.customDark,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
