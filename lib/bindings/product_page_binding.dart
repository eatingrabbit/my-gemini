import 'package:get/get.dart';
import 'package:my_gemini/controller/product_page_controller.dart';
import 'package:my_gemini/model/product.dart';


class ProductPageBinding implements Bindings {
  @override
  void dependencies() {
    final argMap = Get.arguments as Map<String, dynamic>;
    final product = argMap['product'] as Product;
    Get.put(ProductPageController(product: product));
  }
}
