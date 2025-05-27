import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/app_colors/app_colors.dart';
import 'package:movie_app/core/text_style/global_text_style.dart';
import 'package:movie_app/feature/navbar/controllers/navbar_controller.dart';

class NavbarView extends StatelessWidget {
  NavbarView({super.key});

  final controller = Get.put(NavbarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Obx(() => controller.pages[controller.selectedIndex.value]) ,
      backgroundColor: AppColors.primaryColor,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.primaryColor,
          ),
          height: 62.h,
          child: Obx(
            () => Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      controller.selectedIndex.value = 0;
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  controller.selectedIndex.value == 0
                                      ? Color.fromRGBO(122, 36, 188, 0.15)
                                      : Colors.transparent,
                            ),
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                              controller.selectedIndex.value == 0
                                  ? "assets/home_s.svg"
                                  : "assets/home.svg",
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Home",
                            style: globalTextStyle(
                              color:
                                  controller.selectedIndex.value == 0
                                      ? AppColors.whiteColor
                                      : Color.fromRGBO(255, 255, 255, 0.60),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      controller.selectedIndex.value = 1;
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  controller.selectedIndex.value == 1
                                      ? Color.fromRGBO(122, 36, 188, 0.15)
                                      : Colors.transparent,
                            ),
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                              controller.selectedIndex.value == 1
                                  ? "assets/live_s.svg"
                                  : "assets/live.svg",
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Live",
                            style: globalTextStyle(
                              color:
                                  controller.selectedIndex.value == 1
                                      ? AppColors.whiteColor
                                      : Color.fromRGBO(255, 255, 255, 0.60),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      controller.selectedIndex.value = 2;
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  controller.selectedIndex.value == 2
                                      ? Color.fromRGBO(122, 36, 188, 0.15)
                                      : Colors.transparent,
                            ),
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                              controller.selectedIndex.value == 2
                                  ? "assets/library_s.svg"
                                  : "assets/library.svg",
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Library",
                            style: globalTextStyle(
                              color:
                                  controller.selectedIndex.value == 2
                                      ? AppColors.whiteColor
                                      : Color.fromRGBO(255, 255, 255, 0.60),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      controller.selectedIndex.value = 3;
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  controller.selectedIndex.value == 3
                                      ? Color.fromRGBO(122, 36, 188, 0.15)
                                      : Colors.transparent,
                            ),
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                              controller.selectedIndex.value == 3
                                  ? "assets/favourite_s.svg"
                                  : "assets/favourite.svg",
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Favourite",
                            style: globalTextStyle(
                              color:
                                  controller.selectedIndex.value == 3
                                      ? AppColors.whiteColor
                                      : Color.fromRGBO(255, 255, 255, 0.60),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      controller.selectedIndex.value = 4;
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  controller.selectedIndex.value == 4
                                      ? Color.fromRGBO(122, 36, 188, 0.15)
                                      : Colors.transparent,
                            ),
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                              controller.selectedIndex.value == 4
                                  ? "assets/user_s.svg"
                                  : "assets/user.svg",
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Profile",
                            style: globalTextStyle(
                              color:
                                  controller.selectedIndex.value == 4
                                      ? AppColors.whiteColor
                                      : Color.fromRGBO(255, 255, 255, 0.60),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
