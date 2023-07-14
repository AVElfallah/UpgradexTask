import 'package:flutter/material.dart';

import 'package:timeline_tile/timeline_tile.dart';

import '../../../../utils/assets.dart';
import '../components/bolt_icons.dart';

/* class CustomStepperWidget extends StatelessWidget {
  const CustomStepperWidget({
    super.key,
    this.maxSteps = 3,
  });
  final int? maxSteps;

  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          child: Image.asset(
            ProjectAssets.comment,
            height: 75,
            width: 120,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: wi * 0.7,
          top: 32,
          child: Image.asset(
            ProjectAssets.crown,
            height: 75,
            width: 80,
            fit: BoxFit.fill,
          ),
        ),
        const Positioned(
          left: 22,
          top: 50.2,
          child: LineWidget(),
        ),
        const Positioned(
          left: 2,
          top: 100.2,
          child: Text(
            'Select',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const Positioned(
          left: 2,
          top: 118.2,
          child: Text(
            'shop for 7k\nto enroll',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ),
        const Positioned(
          left: 135,
          top: 100.2,
          child: Text(
            'Elite',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const Positioned(
          left: 115,
          top: 118.2,
          child: Text(
            'shop for 7k\nto enroll',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ),
        const Positioned(
          left: 295,
          top: 100.2,
          child: Text(
            'Icon',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const Positioned(
          left: 255,
          top: 118.2,
          child: Text(
            'shop for 7k\nto enroll',
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ),
        const Positioned(
          left: 160,
          top: 80.2,
          child: LineWidget(),
        ),
        const Positioned(
          top: 70,
          child: BoltIcons(
            count: 1,
          ),
        ),
        const Positioned(
          left: 130,
          top: 70,
          child: BoltIcons(
            count: 2,
          ),
        ),
        Positioned(
          left: wi * .724,
          top: 70,
          child: const BoltIcons(
            count: 3,
          ),
        ),
      ],
    );
  }
}
 */
class CustomStepperWidget extends StatelessWidget {
  const CustomStepperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const lineStyle = LineStyle(
      color: Colors.amber,
      thickness: 10,
    );
    return Flex(
      direction: Axis.horizontal,
      children: [
        Flexible(
          flex: 1,
          child: TimelineTile(
            axis: TimelineAxis.horizontal,
            alignment: TimelineAlign.center,
            isFirst: true,
            indicatorStyle: const IndicatorStyle(
              indicatorXY: 0.3,
              width: 30,
              height: 40,
              padding: EdgeInsets.all(8),
              indicator: BoltIcons(
                count: 1,
              ),
            ),
            afterLineStyle: lineStyle,
            endChild: Container(
              constraints: const BoxConstraints(
                minWidth: 120,
              ),
              margin: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Select',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'shop for 7k\nto enroll',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            startChild: Image.asset(
              ProjectAssets.comment,
              height: 75,
              width: 120,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: TimelineTile(
            axis: TimelineAxis.horizontal,
            alignment: TimelineAlign.center,
            beforeLineStyle: lineStyle,
            afterLineStyle: lineStyle,
            indicatorStyle: const IndicatorStyle(
              width: 50,
              height: 40,
              padding: EdgeInsets.all(8),
              indicator: Positioned(
                top: 20,
                child: BoltIcons(
                  count: 2,
                ),
              ),
            ),
            endChild: Container(
              constraints: const BoxConstraints(
                minWidth: 120,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Flexible(
                    flex: 1,
                    child: Text(
                      'Elite',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Text(
                      'Shop for 7k\n+10k to upgrade',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: TimelineTile(
            axis: TimelineAxis.horizontal,
            alignment: TimelineAlign.center,
            isLast: true,
            afterLineStyle: lineStyle,
            beforeLineStyle: lineStyle,
            indicatorStyle: const IndicatorStyle(
              indicatorXY: 1,
              width: 65,
              height: 40,
              padding: EdgeInsets.all(8),
              indicator: BoltIcons(
                count: 3,
              ),
            ),
            endChild: Container(
              constraints: const BoxConstraints(
                minWidth: 120,
              ),
              margin: const EdgeInsets.only(right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Flexible(
                    flex: 1,
                    child: Text(
                      'Elite',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Text(
                      'Shop for 7k\n+25k to upgrade',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
