import 'package:animated_custom_drawer_flutter/MainHomeScreen.dart';
import 'package:animated_custom_drawer_flutter/draweritems/FAQ.dart';
import 'package:animated_custom_drawer_flutter/draweritems/Helpus.dart';
import 'package:animated_custom_drawer_flutter/draweritems/Privacy.dart';
import 'package:animated_custom_drawer_flutter/draweritems/Support.dart';
import 'package:animated_custom_drawer_flutter/draweritems/settings.dart';
import 'package:get/get.dart';

const String support = '/support';

const String privacy = '/privacy';

const String helpus = '/helpus';
const String settings = '/settings';
const String faq = '/faq';
const String home = '/';

List<GetPage> getPages = [
  GetPage(name: home, page: () => MainHomeScreen()),
  GetPage(name: support, page: () => Support()),
  GetPage(name: privacy, page: () => Privacy()),
  GetPage(name: helpus, page: () => Helpus()),
  GetPage(name: settings, page: () => Settings()),
  GetPage(name: faq, page: () => FAQ()),
];
