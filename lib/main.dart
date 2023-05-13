import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thestart/views/checkout4_Screen/checkout4_Screen.dart';
import 'package:thestart/views/filter_screen/filter_Screen.dart';
import 'package:thestart/views/login_up/login_Up.dart';
import 'package:thestart/views/sign_upp/sign_Up.dart';
import 'package:thestart/widgets/bottom_sheet.dart';
import 'package:thestart/widgets/cabbage_card.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
