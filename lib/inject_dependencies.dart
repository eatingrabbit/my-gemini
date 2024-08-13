import 'package:get/get.dart';
import 'package:my_gemini/provider/connection.dart';
import 'package:my_gemini/repository/product_repository.dart';

import 'controller/bottom_navigation_bar_controller.dart';

Future<void> injectDependencies() async {
  Get.put<MyGeminiConnection>(MyGeminiConnection.instance);

  Get.put<ProductRepository>(ProductRepository());

  Get.put<BottomNavigationBarController>(BottomNavigationBarController());
}