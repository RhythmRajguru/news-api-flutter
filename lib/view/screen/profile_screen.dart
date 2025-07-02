import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_api/controller/news_controller.dart';

class ProfileScreen extends StatelessWidget {

  NewsController newsController=Get.put(NewsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
    );
  }
}
