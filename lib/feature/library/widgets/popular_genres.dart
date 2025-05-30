import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:movie_app/feature/library/controller/content_library_controller.dart';

import '../../../core/app_colors/app_colors.dart';
import '../../../core/text_style/global_text_style.dart';

class PopularGenres extends StatelessWidget {
   PopularGenres({super.key});
final controller = Get.find<ContentLibraryController>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: controller.genres.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Stack(
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset(
                      controller.genres[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  width: 120,
                  color: AppColors.primaryColor.withValues(alpha: .5),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(controller.genres[index].icon),

                      Text(
                        controller.genres[index].name,
                        style: globalTextStyle(
                          color: AppColors.whiteColor,
                          fw: FontWeight.w500,
                          size: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
