import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:movie_app/feature/home/controllers/home_controller.dart';
import 'package:movie_app/feature/library/views/video_player_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import '../../../core/app_colors/app_colors.dart';
import '../../../core/text_style/global_text_style.dart';

class TopPart extends StatelessWidget {
  TopPart({super.key});
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SizedBox(
          height: 393,
          width: double.infinity,
          child: Obx(
            () => Image.asset("${controller.selectedCaro}", fit: BoxFit.cover),
          ),
        ),
        Container(
          height: 393,
          width: double.infinity,
          color: Colors.black.withValues(alpha: .3), // This is your shading
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: 393 / 3.2, // bottom half
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .1),
                  blurRadius: 10,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: 393 / 4, // bottom half
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .25),
                  blurRadius: 40,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: 393 / 6, // bottom half
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .20),
                  blurRadius: 20,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: 393 / 8, // bottom half
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .30),
                  blurRadius: 40,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: 393 / 18, // bottom half
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .55),
                  blurRadius: 8,
                  offset: Offset(-10, 10),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 54,
          left: 0,
          right: 0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  SizedBox(width: 36),
                  Expanded(
                    child: TextField(
                      controller: controller.searchController,
                      onChanged: (value) {
                        controller.filterItems(
                          value,
                        ); // Call filter function here
                        print(controller.filteredItems);
                      },
                      decoration: InputDecoration(
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
                            Icon(
                              Icons.mic,
                              color: Color.fromRGBO(255, 255, 255, 0.60),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Stack(
                      children: [
                        Container(
                          width: 44,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                          ),
                          child: Icon(
                            Icons.notifications,
                            color: AppColors.whiteColor,
                            size: 32,
                          ),
                        ),
                        Positioned(
                          right: 03,
                          top: 12,
                          child: Container(
                            height: 16,
                            width: 16,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            child: Text("2"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Obx(
                () =>
                    controller.filteredItems.isNotEmpty
                        ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.white,
                            height: 150,
                            child: Obx(() {
                              final items = controller.filteredItems;
                              return ListView.builder(
                                itemCount: items.length,
                                itemBuilder: (context, index) {
                                  final movie = items[index];
                                  return ListTile(
                                    leading: Image.asset(movie.imagePath),
                                    title: Text(movie.name),
                                    onTap: () {
                                      // your onTap logic
                                    },
                                  );
                                },
                              );
                            }),
                          ),
                        )
                        : SizedBox(),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset("assets/imdb.png", height: 24.152, width: 48),
                    SizedBox(width: 8),
                    Text(
                      "6.8/10",
                      style: globalTextStyle(
                        fw: FontWeight.w500,
                        size: 14,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  "Companion",
                  style: globalTextStyle(
                    fw: FontWeight.w500,
                    size: 16,
                    color: AppColors.whiteColor,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        pushScreenWithoutNavBar(
                          context,
                          VideoPlayerScreen(
                            videoPath: controller.selectedVideo.value,
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: screenWidth < 400 ? 15 : 30,
                        ),
                        height: 44,
                        decoration: BoxDecoration(
                          color: Color(0xff7A24BC),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "Watch Now",
                          style: globalTextStyle(
                            size: 16,
                            fw: FontWeight.w500,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      height: 28,
                      width: 1,
                      color: Color.fromRGBO(255, 255, 255, 0.60),
                    ),
                    SizedBox(width: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromRGBO(173, 89, 243, 0.15),
                          ),
                          child: SvgPicture.asset("assets/download.svg"),
                        ),
                        SizedBox(width: 16),
                        GestureDetector(
                          onTap: () {
                            final movie =
                                controller.selectedRecommendItem.value;
                            if (movie != null) {
                             controller. shareMovieDetails(
                                movie.name,
                               
                              );
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromRGBO(173, 89, 243, 0.15),
                            ),
                            child: SvgPicture.asset("assets/share.svg"),
                          ),
                        ),
                        SizedBox(width: 16),
                        GestureDetector(
                          onTap: () {
                            if (controller.selectedRecommendItem.value !=
                                null) {
                              controller.addFavourite(
                                controller.selectedRecommendItem.value!,
                              );
                            } else {
                              print("No item selected to add to favorites");
                            }
                          },
                          child: Obx(() {
                            final item = controller.selectedRecommendItem.value;
                            final isLiked = item?.liked.value ?? false;

                            return Container(
                              padding: EdgeInsets.all(8),
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color:
                                    isLiked
                                        ? Color(0xff7A24BC)
                                        : Color.fromRGBO(173, 89, 243, 0.15),
                              ),
                              child: SvgPicture.asset("assets/favo.svg"),
                            );
                          }),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
