import 'package:get/get.dart';

class RecommendItem {
  final String id;
  final String name;
  final String imagePath;
  final String moviePath;
  final RxBool liked;

  RecommendItem({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.moviePath,
    bool liked = false,
  }) : liked = RxBool(liked);
}