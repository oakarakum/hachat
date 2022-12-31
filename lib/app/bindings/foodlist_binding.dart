import 'package:get/get.dart';
import '../controllers/foodlist_controller.dart';

class FoodlistBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(FoodlistController());
  }
}
