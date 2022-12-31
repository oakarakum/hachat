
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/maps_controller.dart';


class MapsPage extends GetView<MapsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MapsPage'),
      ),
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
      body: SafeArea(
        child: Text('MapsController'),
      ),
    );
  }
}
  