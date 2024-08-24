import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController extends GetxController {
  var isSearching = false.obs;
  final TextEditingController searchController = TextEditingController();

  void startSearch() {
    isSearching.value = true;
  }

  void stopSearch() {
    isSearching.value = false;
  }
}
