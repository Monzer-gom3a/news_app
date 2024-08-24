import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:news_app/app/features/home/view/home.dart';

class AppRoutes {
  static const HOME = '/home';

  static final routes = [
    GetPage(name: HOME, page: () =>  HomePage()),
  ];
}
