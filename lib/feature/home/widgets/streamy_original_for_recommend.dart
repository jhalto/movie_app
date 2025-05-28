import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/text_style/global_text_style.dart';
import 'package:movie_app/feature/home/controllers/home_controller.dart';
import '../../../core/app_colors/app_colors.dart';

class StreamlyOriginalForRecommendItemView extends StatelessWidget {
  StreamlyOriginalForRecommendItemView({super.key});
 final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Streamly Original",style: globalTextStyle(
                size: 22,
                fw: FontWeight.w500,
                color: AppColors.whiteColor,
              ),),
             
            ],
          ),
          SizedBox(height: 16,),
          Row(
            children: [
              Expanded(child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset("assets/image6.png",height: 224,width: double.infinity,fit: BoxFit.cover,))
                ],
              )),
              SizedBox(width: 8,),
               Expanded(child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset("assets/image7.png",height: 224,width: double.infinity,fit: BoxFit.cover))
                ],
              )),
            ],
          )
        ],
      ),
    );
  }
}