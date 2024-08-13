import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gemini/model/product.dart';

class ProductPageController extends GetxController {
  final Product product;
  ProductPageController({required this.product});
}