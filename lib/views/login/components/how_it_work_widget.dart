import 'package:flutter/material.dart';
import 'package:upgradex_task/utils/colors.dart';

import '../layouts/custom_stepper_widget.dart';

class HowItWorkWidget extends StatelessWidget {
  const HowItWorkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.height * .015),
      height: 260,
      width: 385,
      decoration: BoxDecoration(
        color: ProjectColors.customBlue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 195,
            child: const CustomStepperWidget(),
          ),
          Container(
            height: size.height * .07,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ProjectColors.customBlueS1,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const ListTile(
              leading: CircleAvatar(
                backgroundColor: ProjectColors.customDark,
                child: Icon(
                  Icons.arrow_upward,
                  color: ProjectColors.customAmber,
                ),
              ),
              title: Text(
                'Shop on Myntra to Upgrade your tier',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
