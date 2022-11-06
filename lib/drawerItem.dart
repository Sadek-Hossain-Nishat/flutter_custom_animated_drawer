import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget drawerItem(String itemName, onClick) {
  return InkWell(
    child: Text(
      itemName,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
    ),
    onTap: onClick,
  );
}
