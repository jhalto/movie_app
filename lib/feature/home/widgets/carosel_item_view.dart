import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/app_colors/app_colors.dart';
import 'package:movie_app/feature/home/controllers/home_controller.dart';

class CaroselItemView extends StatelessWidget {
  CaroselItemView({super.key});
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: 48,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: min(controller.caroselItems.length, 5),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    controller.selectedIndex.value = index;
                    controller.selectedCaro.value =
                        controller.caroselItems[index];
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Stack(
                      children: [
                        Obx(
                          () => Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width:
                                    controller.selectedIndex.value == index
                                        ? 1
                                        : 0,
                                color: Color.fromRGBO(255, 255, 255, 0.40),
                              ),
                              borderRadius: BorderRadiusGeometry.circular(6),
                            ),

                            child: Image.asset(
                              controller.caroselItems[index],
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Obx(
                          () =>
                              controller.selectedIndex.value == index
                                  ? SizedBox()
                                  : Container(
                                    width: 80,
                                    color: AppColors.primaryColor.withValues(
                                      alpha: .7,
                                    ),
                                  ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16),

          SizedBox(
            height: 4, // increased to fit taller indicators if needed
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Obx(() {
                    final int selected = controller.selectedIndex.value;
                    final int distance = (selected - index).abs();

                    // Opacity decreases with distance
                    final double opacity = (1.0 - (distance * 0.2)).clamp(
                      0.2,
                      1.0,
                    );

                    // Size never drops below 16
                    final double width = selected == index ? 26.0 : 16.0;

                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: width,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff7A24BC).withOpacity(opacity),
                      ),
                    );
                  }),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
