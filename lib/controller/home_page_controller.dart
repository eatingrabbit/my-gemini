import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:my_gemini/model/product.dart';
import 'package:my_gemini/repository/product_repository.dart';
import 'package:my_gemini/view/common/snackbar.dart';

import '../routes/pages.dart';

class HomePageController extends GetxController {

  final _repo = Get.find<ProductRepository>();
  final productList = <Product>[].obs;
  final isLoading = true.obs;

  @override
  void onInit() async{
    super.onInit();
    await getProductList();
    isLoading.value = false;
  }
  
  Future<void> getProductList() async {
    final res = await _repo.getProductList();
    res.fold((l) => showError(l), (r) => productList.addAll(r));
  }
  
  Future<void> createProduct() async {
    isLoading.value = true;
    final res = await _repo.createProduct(
      name: '새 상품',
      price: 10000,
      images: [],
    );
    res.fold((l) => showError(l), (r) => productList.insert(0, r));
    isLoading.value = false;
  }

  void toProductDetail(Product product) {
    Get.toNamed(Routes.PRODUCT, arguments: {'product': product});
  }
}
