import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:news_api/components/navigation_bar.dart';

import 'bottom_navigation_controller.dart';

class HomeScreenController extends StatelessWidget {

  BottomNavController controller=Get.put(BottomNavController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: NavigationBarCustom(),
      body:Obx(()=>controller.pages[controller.Index.value])
    );
  }
}
