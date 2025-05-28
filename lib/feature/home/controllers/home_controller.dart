import 'package:get/get.dart';
import 'package:movie_app/feature/home/model/movie_model.dart';




class HomeController extends GetxController{
 var selectedIndex = 0.obs;
 var selectedCaro = "assets/image1.png".obs;
 var selectedIndexReco = 0.obs;
 var selectedRecommended = "assets/image1.png".obs;

  var caroselItems = [
    "assets/image1.png",
    "assets/image2.png",
    "assets/image3.jpg",
    "assets/image4.png",
    "assets/image5.png",
    "assets/image1.png",
    "assets/image2.png",
    "assets/image3.jpg",
    "assets/image4.png",
    "assets/image5.png",
  ];
 var recommendItems = <RecommendItem>[
  RecommendItem(name: "Inception sdhjfsjhk fksdjhfk dsfkjjhas d kafjhds", imagePath: "assets/image1.png"),
  RecommendItem(name: "Interstellar", imagePath: "assets/image2.png"),
  RecommendItem(name: "The Dark Knight", imagePath: "assets/image3.jpg"),
  RecommendItem(name: "Tenet", imagePath: "assets/image4.png"),
  RecommendItem(name: "Dunkirk", imagePath: "assets/image5.png"),
  RecommendItem(name: "Memento", imagePath: "assets/image1.png"),
  RecommendItem(name: "The Prestige", imagePath: "assets/image2.png"),
  RecommendItem(name: "Batman Begins", imagePath: "assets/image3.jpg"),
  RecommendItem(name: "Oppenheimer", imagePath: "assets/image4.png"),
  RecommendItem(name: "Following", imagePath: "assets/image5.png"),
];
}