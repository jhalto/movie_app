import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/feature/home/controllers/home_controller.dart';
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
          SizedBox(
            height: 48,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: controller.caroselItems.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Stack(
                    children: [
                      Image.asset(
                        controller.caroselItems[index],
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    Obx(() => controller.selectedIndex.value == index?SizedBox(): Container(
                        width: 80,
                        color: AppColors.primaryColor.withValues(alpha: .7),
                      ),) 
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
