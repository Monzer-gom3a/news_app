import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/app/core/utils/constance.dart';
import 'package:news_app/app/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeData(),
      initialRoute: AppRoutes.HOME,
      getPages: AppRoutes.routes,
    );
  }


}
