import 'package:flutter/material.dart';
import 'package:upgradex_task/utils/assets.dart';

import '../components/product_card_widget.dart';

class BestOfMyntra extends StatefulWidget {
  const BestOfMyntra({super.key});

  @override
  State<BestOfMyntra> createState() => _BestOfMyntraState();
}

class _BestOfMyntraState extends State<BestOfMyntra> {
  final List<String> assetsImages = [
    ProjectAssets.dealOfTheDay1,
    ProjectAssets.dealOfTheDay2,
    ProjectAssets.dealOfTheDay3,
    ProjectAssets.dealOfTheDay4,
    ProjectAssets.dealOfTheDay5,
    ProjectAssets.dealOfTheDay6,
    ProjectAssets.dealOfTheDay7,
  ]..shuffle();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (var i = 0; i < 7; i++)
            ProductCardWidget(
              proudctImageAssets: assetsImages[i],
            ),
        ],
      ),
    );
  }
}
