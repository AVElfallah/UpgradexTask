import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:upgradex_task/utils/colors.dart';
import 'package:upgradex_task/utils/extensions.dart';
import 'package:upgradex_task/views/home/components/web_app_bar.dart';
import 'package:upgradex_task/views/home/components/web_drawer.dart';
import 'package:flutter/foundation.dart' show TargetPlatform;

import '../../utils/assets.dart';

import 'components/circle_card_catigory_widget.dart';
import 'layouts/best_of_myntra.dart';
import 'layouts/deal_of_the_day.dart';
import 'layouts/home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    var sampleImages2 = [
      ProjectAssets.banner1,
      ProjectAssets.banner2,
      ProjectAssets.banner3,
      ProjectAssets.banner4,
      ProjectAssets.banner5,
    ];
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const WebDrawer(),
      endDrawerEnableOpenDragGesture: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          context.isWeb ? 200 : 70,
        ),
        child: const HomeAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FanCarouselImageSlider(
              imagesLink: sampleImages2,
              isAssets: context.isWeb ? false : true,
              sliderHeight: 340,
              sliderWidth: 800,
              imageRadius: 20,
              imageFitMode: BoxFit.cover,
              autoPlay: false,
              indicatorActiveColor: ProjectColors.customDark,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'DEAL OF THE DAY',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: ProjectColors.customDark,
                ),
              ),
            ),
            const DealOfTheDay(),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'BEST OF MYNTRA EXCLUSIVE BRANDS',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: ProjectColors.customDark,
                ),
              ),
            ),
            const BestOfMyntra(),
            const SizedBox(
              height: 20,
            ),
            const BestOfMyntra(),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'CATEGORIES TO BAG',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: ProjectColors.customDark,
                ),
              ),
            ),
            GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: context.isWeb ? 6 : 2,
                childAspectRatio: 1,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                for (var i = 0; i < 18; i++) const CircleCardCatigoryWidget(),
              ],
            ),
            const SizedBox(
              height: 320,
            )
          ],
        ),
      ),
    );
  }
}
