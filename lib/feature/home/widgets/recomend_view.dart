import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/text_style/global_text_style.dart';

import '../../../core/app_colors/app_colors.dart';
import '../controllers/home_controller.dart';

class RecomendView extends StatelessWidget {
  RecomendView({super.key});
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recommended For You", style: globalTextStyle(
          fw: FontWeight.w500,
          size: 22,
          color: AppColors.whiteColor  
          )),
          SizedBox(height: 16,),
          SizedBox(
            height: 286,
            width: double.infinity,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: min(controller.recommendItems.length, 5),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    controller.selectedIndexReco.value = index;
                    controller.selectedRecommended.value =
                        controller.recommendItems[index].imagePath;
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SizedBox(
                      width: 172,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width:
                                      controller.selectedIndexReco.value == index
                                          ? 1
                                          : 0,
                                  color: Color.fromRGBO(255, 255, 255, 0.40),
                                ),
                                borderRadius: BorderRadiusGeometry.circular(6),
                              ),
                                                  
                              child: Image.asset(
                                controller.recommendItems[index].imagePath,
                                width: 172,
                                height: 224,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(controller.recommendItems[index].name, style: globalTextStyle(
                            color: AppColors.whiteColor,
                            size: 14
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16,),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 4, // increased to fit taller indicators if needed
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Obx(() {
                      final int selected = controller.selectedIndexReco.value;
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
                          color: const Color(
                            0xff7A24BC,
                          ).withValues(alpha: opacity),
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
