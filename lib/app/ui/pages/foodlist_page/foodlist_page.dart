
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/foodlist_controller.dart';


class FoodlistPage extends GetView<FoodlistController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FoodlistPage'),
      ),
      body: SafeArea(
        child: Text('FoodlistController'),
      ),
    );
  }
}
  