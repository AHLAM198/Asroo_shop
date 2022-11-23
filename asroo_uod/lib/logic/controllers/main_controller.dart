import 'package:asroo_uod/view/screens/category_screen.dart';
import 'package:asroo_uod/view/screens/favorites_screen.dart';
import 'package:asroo_uod/view/screens/home_screen.dart';
import 'package:asroo_uod/view/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  var tabs = [
    HomeScreen(),
    CategoryScreen(),
    FavoritesScreen(),
    SettingsScreen(),
  ].obs;

  var title = [
    "Asroo Shop",
    "Categories",
    'Favourites',
    "Settings",
  ].obs;
}
