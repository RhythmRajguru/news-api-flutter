import 'package:get/get.dart';
import 'package:news_api/view/screen/articals_screen.dart';
import 'package:news_api/view/screen/home_screen.dart';
import 'package:news_api/view/screen/setting_screen.dart';

class BottomNavController extends GetxController{
  RxInt Index=0.obs;

  var pages=[HomeScreen(),ArticalsScreen(),SettingScreen()];
}