import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeController extends GetxController {
  RxList<Widget> items = [
    Icon(Icons.calendar_month, size: 4.h),
    Icon(Icons.map, size: 4.h),
    Icon(Icons.home, size: 4.h),
    Icon(Icons.bus_alert, size: 4.h),
    Icon(Icons.calculate, size: 4.h),
  ].obs;
  RxInt index = 2.obs;
}
