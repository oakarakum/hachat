
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/foodlist_controller.dart';


class FoodlistPage extends GetView<FoodlistController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 57,
          items: controller.items,
          index: controller.tabIndex.value,
          onTap: (value) {
            controller.changeTabsIndex;
          },
          backgroundColor: Color(0xffb2dfdb),
          color: Color(0xffe0f7fa),
        ),
      appBar: AppBar(
        title: Text('FoodlistPage'),
      ),
      body: SafeArea(
        child: Text('FoodlistController'),
      ),
    );
  }
}
  