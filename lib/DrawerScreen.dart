import 'package:animated_custom_drawer_flutter/drawerItem.dart';
import 'package:animated_custom_drawer_flutter/draweritems/Support.dart';
import 'package:animated_custom_drawer_flutter/routs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 50, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shelter',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
            ),
            Text(
              'Travel Agency',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 20,
            ),
            drawerItem('Support', () {
              Get.toNamed(support);
            }),
            drawerItem('Privacy', () {
              Get.toNamed(privacy);
            }),
            drawerItem('FAQ', () {
              Get.toNamed(faq);
            }),
            drawerItem('Help us', () {
              Get.toNamed(helpus);
            }),
            drawerItem('Rate us', () {}),
            Expanded(child: SizedBox()),
            InkWell(
              onTap: () {
                Get.toNamed(settings);
              },
              child: Text(
                'Settings',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
