import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/text_style/global_text_style.dart';

import '../controller/content_library_controller.dart';

class  NewPopular extends StatelessWidget {
   NewPopular({super.key});
final controller = Get.find<ContentLibraryController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,

      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: controller.genres.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
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
                SizedBox(height: 8,),
                SizedBox(
                  width: 96,
                  child: Text(controller.genres[index].name,style: globalTextStyle(
                    fw: FontWeight.w400,
                    size: 14,
                    color: Colors.white
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            
          );
        },
      ),
    );
  }
}