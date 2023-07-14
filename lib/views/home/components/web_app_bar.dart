import 'package:flutter/material.dart';
import 'package:upgradex_task/utils/colors.dart';

import '../../../utils/assets.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print('wid=' + size.width.toString());
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    );
    return Card(
      color: ProjectColors.customGrey,
      child: Container(
        color: ProjectColors.customWhite,
        width: double.infinity,
        height: 100,
        child: size.width.toInt() >= 992
            ? Row(
                // direction: Axis.horizontal,
                children: [
                  Image.asset(
                    ProjectAssets.logo,
                    width: size.width * 0.09,
                    height: size.height * 0.09,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'MEN',
                      style: textStyle,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'WOMEN',
                      style: textStyle,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'KIDS',
                      style: textStyle,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'HOME & LIVING',
                      style: textStyle,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'BEAUTY',
                      style: textStyle,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'STUDIO',
                      style: textStyle,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 350,
                    height: 38,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for products, brands and more',
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 40,
                    height: 45,
                    child: Column(
                      children: [
                        const Icon(
                          Icons.person_outline,
                          color: Colors.black,
                          size: 24,
                        ),
                        Text(
                          'Profile',
                          style: textStyle.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 45,
                    child: Column(
                      children: [
                        const Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                          size: 24,
                        ),
                        Text(
                          'Wishlist',
                          style: textStyle.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    height: 45,
                    child: Column(
                      children: [
                        const Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.black,
                          size: 24,
                        ),
                        Text(
                          'Bag',
                          style: textStyle.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Row(
                // direction: Axis.horizontal,
                children: [
                  Image.asset(
                    ProjectAssets.logo,
                    width: size.width * 0.09,
                    height: size.height * 0.09,
                  ),
                  Visibility(
                    visible: size.width.toInt() > 621,
                    child: SizedBox(
                      width: 350,
                      height: 38,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for products, brands and more',
                          filled: true,
                          fillColor: Colors.grey[200],
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Visibility(
                    visible: size.width.toInt() < 621,
                    child: const Spacer(),
                  ),
                  Visibility(
                    visible: size.width.toInt() < 621,
                    child: SizedBox(
                      width: 40,
                      height: 50,
                      child: Column(
                        children: [
                          const Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 24,
                          ),
                          Text(
                            'Search',
                            style: textStyle.copyWith(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    height: 50,
                    child: Column(
                      children: [
                        const Icon(
                          Icons.person_outline,
                          color: Colors.black,
                          size: 24,
                        ),
                        Text(
                          'Profile',
                          style: textStyle.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Column(
                      children: [
                        const Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                          size: 24,
                        ),
                        Text(
                          'Wishlist',
                          style: textStyle.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    height: 50,
                    child: Column(
                      children: [
                        const Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.black,
                          size: 24,
                        ),
                        Text(
                          'Bag',
                          style: textStyle.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    child: SizedBox(
                      width: 55,
                      height: 50,
                      child: Column(
                        children: [
                          const Icon(
                            Icons.category_outlined,
                            color: Colors.black,
                            size: 24,
                          ),
                          Text(
                            'Categories',
                            style: textStyle.copyWith(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
