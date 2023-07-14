import 'package:flutter/material.dart';
import 'package:upgradex_task/utils/colors.dart';

import '../../../utils/assets.dart';

class WebCardProudctWidget extends StatelessWidget {
  const WebCardProudctWidget({
    super.key,
    this.isWeb = false,
    this.height = 300,
    this.width = 250,
    this.logo = const SizedBox.shrink(),
    this.productName,
    this.productOffer,
    this.productImageAssets = ProjectAssets.dealOfTheDay1,
  });
  final bool? isWeb;
  final double? height;
  final double? width;
  final Widget? logo;
  final String? productName;
  final String? productOffer;
  final String? productImageAssets;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: (isWeb!)
            ? DecorationImage(
                image: NetworkImage(productImageAssets!),
                fit: BoxFit.fill,
              )
            : DecorationImage(
                image: AssetImage(productImageAssets!),
                fit: BoxFit.fill,
              ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 180,
              width: width,
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                    width: width,
                    child: logo,
                  ),
                  const Spacer(),
                  Text(
                    productName ?? 'no name',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    productOffer ?? 'no offer',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                backgroundColor: ProjectColors.customPink,
                child: Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
