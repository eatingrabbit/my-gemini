import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gemini/controller/test_page_controller.dart';

import 'bottom_navigation_bar.dart';

class TestPage extends GetView<TestPageController> {

  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  const TabBar(tabs: [
                    Tab(text: 'rebuild less, more states'),
                    Tab(text: 'rebuild more, less states'),
                  ]),
                  Expanded(
                    child: TabBarView(
                      children: [
                        ListView.separated(
                          itemBuilder: (context, index) {
                            return Tab1ColorButton(idx: index);
                          },
                          itemCount: 30,
                          separatorBuilder: (context, index) => const SizedBox(height: 10)
                        ),
                        ListView.separated(
                          itemBuilder: (context, index) {
                            return Obx(()=> Tab2ColorButton(idx: index, isSelected: controller.tab2selectedIndex.value == index));
                          },
                          itemCount: 30,
                          separatorBuilder: (context, index) => const SizedBox(height: 10)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
        ),
        bottomNavigationBar: const MyGeminiBottomNavigationBar()
      ),
    );
  }
}



class Tab1ColorButton extends GetView<TestPageController> {
  final int idx;
  const Tab1ColorButton({super.key, required this.idx});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: GestureDetector(
        onTap: () => controller.tab1selectButton(idx),
        child: Obx(() {
          print("index: $idx");
          return Container(
            color: controller.tab1stateList[idx].value ? Colors.yellow : Colors.green,
          );
        }),
      ),
    );
  }
}

class Tab2ColorButton extends GetView<TestPageController> {
  final int idx;
  final bool isSelected;
  const Tab2ColorButton({super.key, required this.idx, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    print("index: $idx");
    return SizedBox(
      width: 100,
      height: 100,
      child: GestureDetector(
        onTap: () => controller.tab2selectButton(idx),
        child: Container(
          color: isSelected ? Colors.yellow : Colors.blue,
        ),
      ),
    );
  }
}
