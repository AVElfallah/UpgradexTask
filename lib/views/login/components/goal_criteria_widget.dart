import 'package:flutter/material.dart';
import 'package:upgradex_task/utils/assets.dart';

class GoalCriteriaWidget extends StatelessWidget {
  const GoalCriteriaWidget({
    super.key,
    this.goal = '₹0',
    this.goalValue = '₹0',
  });
  final String? goal;
  final String? goalValue;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: size.height * .1,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              ProjectAssets.crownCheckIcon,
              width: size.width * .14,
              height: size.height * .2,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  goal!,
                  style: TextStyle(
                    fontSize: size.aspectRatio * 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: size.height * .015),
                Text(
                  'You’ve Spent',
                  style: TextStyle(
                    fontSize: size.aspectRatio * 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: size.width * .22,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  goalValue!,
                  style: TextStyle(
                    fontSize: size.aspectRatio * 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: size.height * .015),
                Text(
                  'Goal',
                  style: TextStyle(
                    fontSize: size.aspectRatio * 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
