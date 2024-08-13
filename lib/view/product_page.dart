import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gemini/controller/product_page_controller.dart';

class ProductPage extends GetView<ProductPageController> {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Product Page'),
              SizedBox(
                height: 400,
                child: Image.network(
                  controller.product.images.isNotEmpty
                    ? controller.product.images.first
                    : '',
                  loadingBuilder: (_, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(child: const CircularProgressIndicator());
                  },
                ),
              ),
              Text(controller.product.name),
              Text('\$ ${controller.product.price}'),
            ],
          ),
        )
    );
  }
}
