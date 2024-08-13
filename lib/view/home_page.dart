import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gemini/controller/home_page_controller.dart';
import 'package:my_gemini/view/bottom_navigation_bar.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Obx(()=>
          !controller.isLoading.value
          ? ListView.separated(
            itemCount: controller.productList.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              return ListTile(
                title: InkWell(
                    onTap: () => controller.toProductDetail(controller.productList[index]),
                    child: Text(controller.productList[index].name)),
              );
            },
          ) : const Center(child: CircularProgressIndicator()),
        ),
      bottomNavigationBar: const MyGeminiBottomNavigationBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.createProduct();
        },
        child: const Icon(Icons.add),
      )
    );
  }
}
