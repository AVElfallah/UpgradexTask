import 'package:flutter/material.dart';
import 'package:upgradex_task/utils/assets.dart';

class BenefitsProgramCardWidget extends StatelessWidget {
  const BenefitsProgramCardWidget({
    super.key,
    this.imageAssetsUrl = ProjectAssets.phoneIcon,
    this.title = 'Benefits of the Program',
  });
  final String? imageAssetsUrl;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        imageAssetsUrl!,
      ),
      title: Text(
        title!,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
