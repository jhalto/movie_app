
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/core/app_colors/app_colors.dart';
import 'package:movie_app/feature/home/views/home_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../../core/text_style/global_text_style.dart';

class PersistenBottomNavBarDemo extends StatelessWidget {
  const PersistenBottomNavBarDemo({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
      
        tabs: [
          PersistentTabConfig(
            screen: HomeScreen(),
            item: ItemConfig(
              inactiveIcon: Container(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset("assets/home.svg"),
              ),
              icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(122, 36, 188, 0.15),
                ),
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset("assets/home_s.svg"),
              ),
              title: "Home",
              activeForegroundColor: Colors.white,
              inactiveForegroundColor: Color.fromRGBO(255, 255, 255, 0.60),
              textStyle: globalTextStyle(color: AppColors.whiteColor),
            ),
          ),

          PersistentTabConfig(
            screen: HomeScreen(),
            item: ItemConfig(
              inactiveIcon: Container(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset("assets/live.svg"),
              ),
              icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(122, 36, 188, 0.15),
                ),
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset("assets/live_s.svg"),
              ),
              title: "Live",
              activeForegroundColor: Colors.white,
              inactiveForegroundColor: Color.fromRGBO(255, 255, 255, 0.60),
              textStyle: globalTextStyle(color: AppColors.whiteColor),
            ),
          ),
          PersistentTabConfig(
            screen: HomeScreen(),
            item: ItemConfig(
              inactiveIcon: Container(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset("assets/library.svg"),
              ),
              icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(122, 36, 188, 0.15),
                ),
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset("assets/library_s.svg"),
              ),
              title: "Library",
              activeForegroundColor: Colors.white,
              inactiveForegroundColor: Color.fromRGBO(255, 255, 255, 0.60),
              textStyle: globalTextStyle(color: AppColors.whiteColor),
            ),
          ),
          PersistentTabConfig(
            screen: HomeScreen(),
            item: ItemConfig(
              inactiveIcon: Container(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset("assets/favourite.svg"),
              ),
              icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(122, 36, 188, 0.15),
                ),
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset("assets/favourite_s.svg"),
              ),
              title: "Favourite",
              activeForegroundColor: Colors.white,
              inactiveForegroundColor: Color.fromRGBO(255, 255, 255, 0.60),
              textStyle: globalTextStyle(color: AppColors.whiteColor),
            ),
          ),
          PersistentTabConfig(
            screen: HomeScreen(),
            item: ItemConfig(
              inactiveIcon: Container(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset("assets/user.svg"),
              ),
              icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(122, 36, 188, 0.15),
                ),
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset("assets/user_s.svg"),
              ),
              title: "Profile",
              activeForegroundColor: Colors.white,
              inactiveForegroundColor: Color.fromRGBO(255, 255, 255, 0.60),
              textStyle: globalTextStyle(color: AppColors.whiteColor),
            ),
          ),
        ],
        navBarBuilder:
            (navBarConfig) => Style1BottomNavBar(
              navBarConfig: navBarConfig,
              navBarDecoration: NavBarDecoration(color: Colors.black),
            ),
      ),
    );
  }
}
