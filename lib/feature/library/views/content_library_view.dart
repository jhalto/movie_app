import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/app_colors/app_colors.dart';
import 'package:movie_app/feature/library/controller/content_library_controller.dart';
import 'package:movie_app/feature/library/widgets/curated_playlists.dart';
import 'package:movie_app/feature/library/widgets/new_popular.dart';
import 'package:movie_app/feature/library/widgets/popular_genres.dart';
import 'package:movie_app/feature/library/widgets/you_may_also_like.dart';
import '../../../core/text_style/global_text_style.dart';

class ContentLibraryView extends StatelessWidget {
  ContentLibraryView({super.key});
  
  final controller = Get.put(ContentLibraryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                Color(0xff00030f).withValues(alpha: .1),
                Color(0xff7A24BC).withValues(alpha: .025)
              ])
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            
                            decoration: InputDecoration(
                             contentPadding: EdgeInsets.symmetric(vertical: 0),
                              hintText: "Search",
                              hintStyle: globalTextStyle(
                                size: 16,
                                color: Color.fromRGBO(255, 255, 255, 0.60),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 255, 255, 0.08),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(255, 255, 255, 0.08),
                                ),
                              ),
                              filled: true,
                              fillColor: Color.fromRGBO(0, 0, 0, 0.40),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                CupertinoIcons.search,
                                color: AppColors.whiteColor.withValues(alpha: .6),
                              ),
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 1,
                                    height: 16,
                          
                                    color: Color.fromRGBO(255, 255, 255, 0.60),
                                  ),
                                  SizedBox(width: 12),
                                  Icon(Icons.mic, color: Color.fromRGBO(255, 255, 255, 0.60)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16,),
                        Container(
                          width: 44,
                          height: 44,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Color.fromRGBO(255, 255, 255, 0.08),
                                  width: 1
                                )
                          ),
                          child: SvgPicture.asset("assets/filter.svg"),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 24,),
                  Text("Popular Genres",style: globalTextStyle(
                    size: 22,
                    fw: FontWeight.w500,
                    color: AppColors.whiteColor
                  ),),
                  SizedBox(
                    height: 24,
                  ),
                 PopularGenres(),
                 SizedBox(
                    height: 24,
                  ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Curated Playlists",style: globalTextStyle(
                        size: 22,
                        fw: FontWeight.w500,
                        color: AppColors.whiteColor
                      ),),
                      Text("View All",style: globalTextStyle(
                        size: 14,
                        fw: FontWeight.w500,
                        color: Color(0xff7A24BC)
                      ),),
                   ],
                 ),
                 SizedBox(
                    height: 24,
                  ),
                  CuratedPlaylists(),
                   SizedBox(
                    height: 24,
                  ),
                  
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("New & Popular",style: globalTextStyle(
                        size: 22,
                        fw: FontWeight.w500,
                        color: AppColors.whiteColor
                      ),),
                      Text("View All",style: globalTextStyle(
                        size: 14,
                        fw: FontWeight.w500,
                        color: Color(0xff7A24BC)
                      ),),
                   ],
                 ),
                 SizedBox(
                    height: 24,
                  ),
                  NewPopular(),
                  SizedBox(
                    height: 24,
                  ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Upcoming Live Streams",style: globalTextStyle(
                        size: 22,
                        fw: FontWeight.w500,
                        color: AppColors.whiteColor
                      ),),
                      Text("View All",style: globalTextStyle(
                        size: 14,
                        fw: FontWeight.w500,
                        color: Color(0xff7A24BC)
                      ),),
                   ],
                 ),
                 SizedBox(
                    height: 24,
                  ),
                  CuratedPlaylists(),
                  SizedBox(
                    height: 24,
                  ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("You May Also Like",style: globalTextStyle(
                        size: 22,
                        fw: FontWeight.w500,
                        color: AppColors.whiteColor
                      ),),
                      Text("View All",style: globalTextStyle(
                        size: 14,
                        fw: FontWeight.w500,
                        color: Color(0xff7A24BC)
                      ),),
                   ],
                 ),
                 SizedBox(
                    height: 24,
                  ),
                  YouMayAlsoLike(),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
