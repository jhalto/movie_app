import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/feature/home/controllers/home_controller.dart';
import 'package:movie_app/feature/home/widgets/carosel_item_view.dart';
import 'package:movie_app/feature/home/widgets/top_part.dart';

import '../../../core/app_colors/app_colors.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          TopPart(),
          SizedBox(height: 16,),
          CaroselItemView(),
        ],
      ),
    );
  }
}
