import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/feature/home/widgets/carosel_item_view.dart';
import 'package:movie_app/feature/home/widgets/recomend_view.dart';
import 'package:movie_app/feature/home/widgets/streamy_original_for_recommend.dart';
import 'package:movie_app/feature/home/widgets/top_part.dart';
import '../../../core/app_colors/app_colors.dart';
import '../controllers/home_controller.dart';
import '../widgets/best_documenteries.dart';
import '../widgets/popular_animated.dart';
import '../widgets/popular_comedy.dart';
import '../widgets/popular_drama.dart';
import '../widgets/popular_movies.dart';
import '../widgets/tv_show.dart';

class RecomendForYou extends StatelessWidget {
  RecomendForYou({super.key});
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
            SizedBox(height: 16),

            CaroselItemView(),
            SizedBox(height: 16),

            RecomendView(),
            
            SizedBox(height: 24),
            StreamlyOriginalForRecommendItemView(),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                children: [
                  SizedBox(height: 24),
                  TvShow(),
                  PopularMovies(),
                  PopularDrama(),
                  PopularComedy(),
                  PopularAnimatedMovies(),
                  BestDocumentaries(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
