import 'package:get/get.dart';

import '../model/genre_model.dart';

class ContentLibraryController extends GetxController{
  final List<Genre> genres = [
  Genre(
    id: 'tv',
    name: 'TV Shows',
    imageUrl: 'assets/image1.png',
    icon: "assets/show.svg"
  ),
  Genre(
    id: 'movie',
    name: 'Movies',
    imageUrl: 'assets/image2.png',
    icon: "assets/movie.svg"
  ),
  Genre(
    id: 'steamly',
    name: 'Steamly Original',
    imageUrl: 'assets/image3.jpg',
    icon: "assets/play.svg",
  ),
  Genre(
    id: 'sports',
    name: 'Sports',
    imageUrl: 'assets/image4.png',
    icon: "assets/sports.svg"
  ),
];
}