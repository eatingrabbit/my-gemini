import 'package:get/get.dart';
import 'package:my_gemini/controller/home_page_controller.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomePageController());
  }
}