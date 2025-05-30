import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:movie_app/feature/library/controller/content_library_controller.dart';

import '../../../core/app_colors/app_colors.dart';
import '../../../core/text_style/global_text_style.dart';

class CuratedPlaylists extends StatelessWidget {
 CuratedPlaylists({super.key});
final controller = Get.find<ContentLibraryController>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 122,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: controller.genres.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SizedBox(
              height: 122,
              width: 96,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  controller.genres[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}