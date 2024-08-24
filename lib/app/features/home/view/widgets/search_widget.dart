import 'package:flutter/material.dart';
import 'package:news_app/app/features/home/controller/home_controller.dart';

class buildSearchField extends StatelessWidget {
  buildSearchField({
    super.key,
  });

  final HomeController controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.searchController,
      autofocus: true,
    );
  }
}
