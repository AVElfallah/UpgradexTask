import 'package:flutter/material.dart';
import 'package:upgradex_task/utils/assets.dart';
import 'package:upgradex_task/utils/colors.dart';

import '../../../utils/constants.dart';
import '../../../utils/helpers.dart';
import 'components/benefits_program_widget.dart';
import 'components/bottom_widget.dart';
import 'components/goal_criteria_widget.dart';
import 'components/how_it_work_widget.dart';
import 'layouts/rewads_layout.dart';

class LoginView extends StatefulWidget {
  const LoginView({
    super.key,
  });

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  ScrollController? controller = ScrollController();
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
      body: Stack(
        alignment: Alignment.center,
        children: [
          Scrollbar(
            controller: controller,
            child: Container(
              margin: EdgeInsets.only(
                top: size.height * .01,
              ),
              color: ProjectColors.customDark,
              width: size.width *
                  getScreenSize(
                    size.width.toInt(),
                  ),
              height: size.height * .87,
              child: SingleChildScrollView(
                controller: controller,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height * .55,
                      width: double.infinity,
                      child: Image.asset(
                        ProjectAssets.okGirl,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      'Become an INSIDER!',
                      textAlign: TextAlign.start,
                      style: TextStyles.s1,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      child: Text(
                        'Join the Insider programme and earn Supercoins with every purchase and much more. Log in now!',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: ProjectColors.customLightGrey,
                          fontSize: 20,
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
                        textAlign: TextAlign.start,
                        style: TextStyles.s1!.copyWith(
                          color: ProjectColors.customLightGrey,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 8,
                      ),
                      width: double.infinity,
                      height: size.height * .35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
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
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Note: Recent purchases will only reflect in the goal once the return window is over',
                        style: TextStyle(
                          color: ProjectColors.customLightGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(
                        8.0,
                      ),
                      child: Text(
                        'Benefits Of Joining The Program',
                        style: TextStyles.s1,
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
                        style: TextStyles.s1,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(
                        8.0,
                      ),
                      child: Text(
                        'Earn SuperCoins with every purchase.\n'
                        'SuperCoins can be redeemed for exciting rewards.',
                        style: TextStyle(
                          color: ProjectColors.customLightGrey,
                          fontSize: 18,
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
                        style: TextStyles.s1,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 10,
                      ),
                      child: Text(
                        'Use your SuperCoins to get exciting rewards',
                        style: TextStyle(
                          color: ProjectColors.customGrey,
                          fontSize: 18,
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
                    const Text(
                      'Fashion Advice | VIP Access | Extra Savings',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ProjectColors.customLightGrey,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: size.height * .265,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: BottomWidget(),
          ),
        ],
      ),
    );
  }
}
