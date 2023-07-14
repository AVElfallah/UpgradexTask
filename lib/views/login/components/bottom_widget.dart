import 'package:flutter/material.dart';
import 'package:upgradex_task/router/router.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/helpers.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: ProjectColors.customBlue,
      height: size.height * .20,
      width: size.width * getScreenSize(size.width.toInt()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                ProjectRouter.home,
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ProjectColors.customPink,
              minimumSize: Size(
                size.width * .75,
                size.height * .06,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
            ),
            child: Text(
              'Log in'.toUpperCase(),
              style: const TextStyle(
                color: ProjectColors.customWhite,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text(
            'By enrolling you agree to',
            style: TextStyle(
              color: ProjectColors.customLightGrey,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Insider Terms & Conditions',
              style: TextStyle(
                color: ProjectColors.customPink,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
