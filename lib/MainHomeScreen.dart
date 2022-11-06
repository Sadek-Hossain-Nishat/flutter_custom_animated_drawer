import 'package:animated_custom_drawer_flutter/BottomNavController.dart';
import 'package:animated_custom_drawer_flutter/DrawerScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  Future _exitDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Are you sure to close this app'),
              content: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text('No')),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        SystemNavigator.pop();
                      },
                      child: Text('Yes'))
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          _exitDialog(context);
          return Future.value(false);
        },
        child: Scaffold(
          body: Stack(
            children: [DrawerScreen(), BottomNavController()],
          ),
        ));
  }
}
