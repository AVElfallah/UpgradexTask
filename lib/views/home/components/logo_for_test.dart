import 'package:flutter/material.dart';

import '../../../utils/assets.dart';
import '../../../utils/colors.dart';

class LogoForTest extends StatelessWidget {
  const LogoForTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          ProjectAssets.logo,
          width: 30,
          height: 30,
        ),
        const SizedBox(width: 8),
        const Text(
          'Upgradex',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
            color: ProjectColors.customDark,
          ),
        ),
      ],
    );
  }
}
