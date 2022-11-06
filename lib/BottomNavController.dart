import 'package:animated_custom_drawer_flutter/pages/NavAdd.dart';
import 'package:animated_custom_drawer_flutter/pages/NavFavourite.dart';
import 'package:animated_custom_drawer_flutter/pages/NavHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomNavController extends StatelessWidget {
  RxBool _drawer = false.obs;
  RxInt _currentIndex = 0.obs;
  final _pages = [NavHome(), NavAdd(), NavFavourite()];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return AnimatedPositioned(
          top: _drawer.value == false ? 0 : 100,
          bottom: _drawer.value == false ? 0 : 100,
          left: _drawer.value == false ? 0 : 200,
          right: _drawer.value == false ? 0 : -100,
          child: Container(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                title: Text('Bottom Nav'),
                foregroundColor: Colors.black,
                leading: _drawer.value == false
                    ? IconButton(
                        onPressed: () {
                          _drawer.value = true;
                        },
                        icon: Icon(Icons.menu),
                        // color: Colors.black,
                      )
                    : IconButton(
                        onPressed: () {
                          _drawer.value = false;
                        },
                        icon: Icon(Icons.close),
                        // color: Colors.black,
                      ),
              ),
              bottomNavigationBar: BottomNavigationBar(
                  currentIndex: _currentIndex.value,
                  onTap: (value) {
                    _currentIndex.value = value;
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home_outlined), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.add_outlined), label: 'Add'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.favorite_outline), label: 'Favourite ')
                  ]),
              body: _pages[_currentIndex.value],
            ),
          ),
          duration: Duration(milliseconds: 400));
    });
  }
}
