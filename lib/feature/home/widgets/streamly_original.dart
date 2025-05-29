import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/text_style/global_text_style.dart';
import 'package:movie_app/feature/home/controllers/home_controller.dart';
import 'package:movie_app/feature/home/views/recomend_for_you.dart';
import '../../../core/app_colors/app_colors.dart';

class StreamlyOriginal extends StatelessWidget {
  StreamlyOriginal({super.key});
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
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RecomendForYou()));
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Text(
                      "Recommended",
                      style: globalTextStyle(
                        size: 14,
                        fw: FontWeight.w500,
                        color: Color(0xff7A24BC),
                      ),
                    ),
                  ),
                ),
              ),
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