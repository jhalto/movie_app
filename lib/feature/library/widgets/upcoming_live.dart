import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/feature/library/controller/content_library_controller.dart';

class UpcomingLive extends StatelessWidget {
   UpcomingLive({super.key});
 final controller = Get.find<ContentLibraryController>();
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 160,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: controller.genres.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SizedBox(
              height: 160,
              width: 125,
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