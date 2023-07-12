import 'package:flutter/material.dart';
import 'package:upgradex_task/utils/assets.dart';

import '../components/rewards_card_widget.dart';

class RewadsLayout extends StatelessWidget {
  const RewadsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        RewardsCardWidget(
          image: ProjectAssets.fans,
          text: 'Get Myntra Voucher worth Rs.500',
        ),
        RewardsCardWidget(
          image: ProjectAssets.manWithAJacket,
          text: "Get Levi's Voucher worth Rs. 500",
        ),
        RewardsCardWidget(
          image: ProjectAssets.sonylive,
          text: "Get SonyLiv Premium 1 Month Subscription",
        ),
        RewardsCardWidget(
          image: ProjectAssets.tokyoTalkies,
          text: "Get Tokyo Talkies Voucher worth Rs.400",
        ),
        RewardsCardWidget(
          image: ProjectAssets.fikpkart,
          text: "Get FLAT 12% OFF on Flipkart Flight  Bookings",
        ),
      ],
    );
  }
}
