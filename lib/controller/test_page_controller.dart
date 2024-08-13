import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestPageController extends GetxController {

  final tab1selectedIndex = 0.obs;
  final tab1stateList = List.generate(30, (index) => false.obs);

  final tab2selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    tab1stateList[tab1selectedIndex.value].value = true;
  }

  void tab1selectButton(int index) {
    tab1stateList[tab1selectedIndex.value].value = false;
    tab1selectedIndex.value = index;
    tab1stateList[tab1selectedIndex.value].value = true;
  }

  void tab2selectButton(int index) {
    tab2selectedIndex.value = index;
  }
}