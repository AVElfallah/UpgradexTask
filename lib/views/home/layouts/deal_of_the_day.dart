import 'package:flutter/material.dart';

import '../../../utils/assets.dart';
import '../components/logo_for_test.dart';
import '../components/web_card_proudct_widget.dart';

class DealOfTheDay extends StatelessWidget {
  const DealOfTheDay({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          SizedBox(width: 8),
          WebCardProudctWidget(
            width: 190,
            productImageAssets: ProjectAssets.dealOfTheDay1,
            logo: LogoForTest(),
            productName: 'Kurtas',
            productOffer: 'Under ₹899',
          ),
          SizedBox(width: 8),
          WebCardProudctWidget(
            width: 190,
            productImageAssets: ProjectAssets.dealOfTheDay2,
            logo: LogoForTest(),
            productName: 'Dresses',
            productOffer: 'Under ₹899',
          ),
          SizedBox(width: 8),
          WebCardProudctWidget(
            width: 190,
            productImageAssets: ProjectAssets.dealOfTheDay3,
            logo: LogoForTest(),
            productName: 'Work-Ready- Shoes',
            productOffer: 'Min. 30% Off',
          ),
          SizedBox(width: 8),
          WebCardProudctWidget(
            width: 190,
            productImageAssets: ProjectAssets.dealOfTheDay4,
            logo: LogoForTest(),
            productName: 'Casual Shoes & Flip-Flops',
            productOffer: 'Up To 70% Off',
          ),
          SizedBox(width: 8),
          WebCardProudctWidget(
            width: 190,
            productImageAssets: ProjectAssets.dealOfTheDay5,
            logo: LogoForTest(),
            productName: 'Dinnerware & Kitchenware',
            productOffer: 'Up To 70% Off',
          ),
          SizedBox(width: 8),
          WebCardProudctWidget(
            width: 190,
            productImageAssets: ProjectAssets.dealOfTheDay6,
            logo: LogoForTest(),
            productName: 'Accessories',
            productOffer: 'Min. 50% Off',
          ),
          SizedBox(width: 8),
          WebCardProudctWidget(
            width: 190,
            productImageAssets: ProjectAssets.dealOfTheDay7,
            logo: LogoForTest(),
            productName: 'Natural care',
            productOffer: 'Gift With Purchase',
          ),
          SizedBox(width: 8),
        ],
      ),
    );
  }
}
