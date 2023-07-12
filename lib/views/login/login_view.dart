import 'package:flutter/material.dart';
import 'package:upgradex_task/utils/assets.dart';
import 'package:upgradex_task/utils/colors.dart';
import 'package:upgradex_task/views/login/components/goal_criteria_widget.dart';
import 'package:upgradex_task/views/login/layouts/rewads_layout.dart';

import 'components/benefits_program_widget.dart';
import 'components/how_it_work_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ProjectColors.customLightPink,
      appBar: AppBar(
        backgroundColor: ProjectColors.customWhite,
        centerTitle: true,
        title: Image.asset(
          ProjectAssets.logo,
          width: size.width * 0.3,
          height: size.height * 0.1,
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(
            top: size.height * .01,
          ),
          color: ProjectColors.customDark,
          width: size.width * .93,
          height: size.height * .87,
          child: ListView(
            children: [
              SizedBox(
                height: size.height * .45,
                child: Image.asset(
                  ProjectAssets.okGirl,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Become an INSIDER!',
                  style: TextStyle(
                    color: ProjectColors.customAmber,
                    fontSize: size.aspectRatio * 65,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                child: Text(
                  'Join the Insider programme and earn Supercoins with every purchase and much more. Log in now!',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: ProjectColors.customLightGrey,
                    fontSize: size.aspectRatio * 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                child: Text(
                  'New Goal Criteria',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: ProjectColors.customLightGrey,
                    fontSize: size.aspectRatio * 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 8,
                ),
                width: double.infinity,
                height: size.height * .25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ProjectColors.customBlue,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    GoalCriteriaWidget(
                      goal: '₹0',
                      goalValue: '₹7000',
                    ),
                    Divider(
                      color: ProjectColors.customGrey,
                      thickness: 1,
                    ),
                    GoalCriteriaWidget(
                      goal: '0/5',
                      goalValue: '5',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * .015,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Note: Recent purchases will only reflect in the goal once the return window is over',
                  style: TextStyle(
                    color: ProjectColors.customLightGrey,
                    fontSize: size.aspectRatio * 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Benefits Of Joining The Program',
                  style: TextStyle(
                    color: ProjectColors.customAmber,
                    fontSize: size.aspectRatio * 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .015,
              ),
              const BenefitsProgramCardWidget(
                imageAssetsUrl: ProjectAssets.timeIcon,
                title: 'Early Access To The Sales',
              ),
              const Divider(
                color: ProjectColors.customGrey,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              const BenefitsProgramCardWidget(
                imageAssetsUrl: ProjectAssets.rewardIcon,
                title: 'Insider Exclusive Rewards & Benefits',
              ),
              const Divider(
                color: ProjectColors.customGrey,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              const BenefitsProgramCardWidget(
                imageAssetsUrl: ProjectAssets.phoneIcon,
                title: 'Priority Customer Support',
              ),
              SizedBox(
                height: size.height * .015,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 10,
                ),
                child: Text(
                  'How dose it work?',
                  style: TextStyle(
                    color: ProjectColors.customAmber,
                    fontSize: size.aspectRatio * 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Earn SuperCoins with every purchase.\n'
                  'SuperCoins can be redeemed for exciting rewards.',
                  style: TextStyle(
                    color: ProjectColors.customLightGrey,
                    fontSize: size.aspectRatio * 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const HowItWorkWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 10,
                ),
                child: Text(
                  'Rewards',
                  style: TextStyle(
                    color: ProjectColors.customAmber,
                    fontSize: size.aspectRatio * 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 10,
                ),
                child: Text(
                  'Use your SuperCoins to get exciting rewards',
                  style: TextStyle(
                    color: ProjectColors.customGrey,
                    fontSize: size.aspectRatio * 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 400,
                child: RewadsLayout(),
              ),
              SizedBox(
                height: size.height * .015,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ProjectAssets.logo,
                      height: 30,
                      width: 50,
                    ),
                    Image.asset(
                      ProjectAssets.insiderText,
                      height: 25,
                      width: 150,
                    ),
                  ],
                ),
              ),
              Text(
                'Fashion Advice | VIP Access | Extra Savings',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ProjectColors.customLightGrey,
                  fontSize: size.aspectRatio * 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: size.height * .025,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: ProjectColors.customBlue,
        height: size.height * .20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: ProjectColors.customPink,
                minimumSize: Size(
                  size.width * .9,
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
                style: TextStyle(
                  color: ProjectColors.customWhite,
                  fontSize: size.width * .05,
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
              child: Text(
                'Insider Terms & Conditions',
                style: TextStyle(
                  color: ProjectColors.customPink,
                  fontSize: size.width * .05,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
