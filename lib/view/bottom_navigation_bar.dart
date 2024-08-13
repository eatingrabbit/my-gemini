import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gemini/controller/bottom_navigation_bar_controller.dart';

class MyGeminiBottomNavigationBar extends GetView<BottomNavigationBarController> {
  const MyGeminiBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(()=>
      BottomNavigationBar(
        currentIndex: controller.currentIndex.value,
        onTap: controller.changeIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ]
      ),
    );
  }
}
