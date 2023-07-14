import 'package:flutter/material.dart';
import 'package:upgradex_task/utils/colors.dart';

class WebDrawer extends StatelessWidget {
  const WebDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var currentPlatform = Theme.of(context).platform;

    var isWeb = !(currentPlatform == TargetPlatform.android ||
        currentPlatform == TargetPlatform.iOS);
    return Container(
      width: isWeb ? size.width * 0.28 : size.width * 0.65,
      height: double.infinity,
      color: ProjectColors.customLightPink,
      child: ListView(
        children: const [
          ListTile(
            leading: Icon(
              Icons.person,
              color: ProjectColors.customPink,
            ),
            title: Text(
              'MEN',
              style: TextStyle(
                color: ProjectColors.customPink,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.girl,
              size: 30,
              color: ProjectColors.customPink,
            ),
            title: Text(
              'WOMEN',
              style: TextStyle(
                color: ProjectColors.customPink,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.child_friendly,
              color: ProjectColors.customPink,
            ),
            title: Text(
              'KIDS',
              style: TextStyle(
                color: ProjectColors.customPink,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.nature,
              color: ProjectColors.customPink,
            ),
            title: Text(
              'HOME & LIVING',
              style: TextStyle(
                color: ProjectColors.customPink,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.masks,
              color: ProjectColors.customPink,
            ),
            title: Text(
              'BEAUTY',
              style: TextStyle(
                color: ProjectColors.customPink,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.mic,
              color: ProjectColors.customPink,
            ),
            title: Text(
              'STUDIO',
              style: TextStyle(
                color: ProjectColors.customPink,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
