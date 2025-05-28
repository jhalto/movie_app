import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/feature/home/controllers/home_controller.dart';
import 'package:movie_app/feature/home/widgets/best_documenteries.dart';
import 'package:movie_app/feature/home/widgets/carosel_item_view.dart';
import 'package:movie_app/feature/home/widgets/popular_animated.dart';
import 'package:movie_app/feature/home/widgets/popular_comedy.dart';
import 'package:movie_app/feature/home/widgets/popular_drama.dart';
import 'package:movie_app/feature/home/widgets/popular_movies.dart';
import 'package:movie_app/feature/home/widgets/streamly_original.dart';
import 'package:movie_app/feature/home/widgets/top_part.dart';
import 'package:movie_app/feature/home/widgets/tv_show.dart';

import '../../../core/app_colors/app_colors.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopPart(),
            SizedBox(height: 16,),
            CaroselItemView(),
            SizedBox(
              height: 24,
            ),
            StreamlyOriginal(),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                children: [
                  SizedBox(height: 24,),
                  TvShow(),
                  PopularMovies(),
                  PopularDrama(),
                  PopularComedy(),
                  PopularAnimatedMovies(),
                  BestDocumentaries(),
                ],
              ),
            )
          
          ],
        ),
      ),
    );
  }
}
