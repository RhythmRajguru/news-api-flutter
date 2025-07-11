import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_api/config/Theme.dart';
import 'package:news_api/controller/bottom_navigation_controller.dart';
import 'package:news_api/controller/home_screen_controller.dart';
import 'package:news_api/controller/theme_controller.dart';
import 'package:news_api/view/screen/home_screen.dart';
import 'package:news_api/view/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    ThemeController themeController=Get.put(ThemeController());

    return Obx(()=>GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
      home:  HomeScreenController(),
    ));
  }
}

