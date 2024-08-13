// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:my_gemini/bindings/product_page_binding.dart';
import 'package:my_gemini/bindings/test_page_binding.dart';
import 'package:my_gemini/view/product_page.dart';
import 'package:my_gemini/view/test_page.dart';

import '../bindings/home_page_binding.dart';
import '../view/home_page.dart';

part './routes.dart';

abstract class Pages{
  static final List<GetPage> allPages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => const HomePage(),
      binding: HomePageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.PRODUCT,
      page: () => const ProductPage(),
      binding: ProductPageBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 200),
    ),
    GetPage(
      name: Routes.TEST,
      page: () => const TestPage(),
      binding: TestPageBinding(),
      transition: Transition.noTransition,
      transitionDuration: const Duration(milliseconds: 200),
    )
  ];
}