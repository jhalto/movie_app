import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/app_colors/app_colors.dart';
import '../../../core/text_style/global_text_style.dart';
import '../controllers/home_controller.dart';

class PopularAnimatedMovies extends StatelessWidget {
  PopularAnimatedMovies({super.key});
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Animated Movies",
                style: globalTextStyle(
                  size: 22,
                  fw: FontWeight.w500,
                  color: AppColors.whiteColor,
                ),
              ),
              Text(
                "View All",
                style: globalTextStyle(
                  size: 14,
                  fw: FontWeight.w500,
                  color: Color(0xff7A24BC),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          SizedBox(
            height: 200,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: min(controller.caroselItems.length, 3),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SizedBox(
                    width: 150,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            controller.caroselItems[index],
                            width: 150,
                            height: 88,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Hip Hop Road Redemtion",style: globalTextStyle(
                          size: 16,
                          color: Colors.white
                        ),maxLines: 2,overflow: TextOverflow.ellipsis,)
                      ],
                    ),
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
