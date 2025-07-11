import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_api/controller/news_controller.dart';
import 'package:news_api/controller/theme_controller.dart';

class SettingScreen extends StatelessWidget {

  ThemeController themeController=Get.put(ThemeController());
  NewsController newsController=Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body:
          Obx(()=>ListTile(
            title: Text('Dark Mode'),
            subtitle: Text('Enable or disable dark theme'),
            trailing: Switch(value: themeController.isDarkMode.value,
                onChanged: (value) {
                  themeController.toggleTheme();
                },),
          )),

    );
  }
}
