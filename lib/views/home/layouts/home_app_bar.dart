import 'package:flutter/material.dart';
import 'package:upgradex_task/utils/extensions.dart';

import '../../../utils/assets.dart';
import '../../../utils/colors.dart';
import '../components/web_app_bar.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return context.isWeb
        ? const PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: WebAppBar(),
          )
        : AppBar(
            backgroundColor: ProjectColors.customWhite,
            leading: const SizedBox.shrink(),
            title: Image.asset(
              ProjectAssets.logo,
              width: size.width * 0.15,
              height: size.height * 0.1,
            ),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: ProjectColors.customPink,
                ),
              ),
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: const Icon(
                  Icons.dehaze,
                  color: ProjectColors.customPink,
                ),
              ),
            ],
          );
  }
}
