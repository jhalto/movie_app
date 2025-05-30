import 'package:get/get.dart';
import 'package:movie_app/feature/home/model/movie_model.dart';




class HomeController extends GetxController{
 var selectedIndex = 0.obs;
 var selectedCaro = "assets/image1.png".obs;
 var selectedVideo = "assets/nanami.mp4".obs;
 var selectedIndexReco = 0.obs;
 var selectedRecommended = "assets/image1.png".obs;

  var caroselItems = <RecommendItem>[
  RecommendItem(name: "Inception sdhjfsjhk fksdjhfk dsfkjjhas d kafjhds", imagePath: "assets/image1.png",moviePath: "assets/nanami.mp4"),
  RecommendItem(name: "Interstellar", imagePath: "assets/image2.png",moviePath: "assets/nanami.mp4"),
  RecommendItem(name: "The Dark Knight", imagePath: "assets/image3.jpg",moviePath: "assets/nanami.mp4"),
  RecommendItem(name: "Tenet", imagePath: "assets/image4.png",moviePath: "assets/nanami.mp4"),
  RecommendItem(name: "Dunkirk", imagePath: "assets/image5.png",moviePath: "assets/nanami.mp4"),
  RecommendItem(name: "Memento", imagePath: "assets/image1.png",moviePath: "assets/nanami.mp4"),
  RecommendItem(name: "The Prestige", imagePath: "assets/image2.png",moviePath: "assets/nanami.mp4"),
  RecommendItem(name: "Batman Begins", imagePath: "assets/image3.jpg",moviePath: "assets/nanami.mp4"),
  RecommendItem(name: "Oppenheimer", imagePath: "assets/image4.png",moviePath: "assets/nanami.mp4"),
  RecommendItem(name: "Following", imagePath: "assets/image5.png",moviePath: "assets/nanami.mp4"),
];
 var recommendItems = <RecommendItem>[
  RecommendItem(name: "Inception sdhjfsjhk fksdjhfk dsfkjjhas d kafjhds", imagePath: "assets/image1.png",moviePath: "assets/nanami.mp4"),
  RecommendItem(name: "Interstellar", imagePath: "assets/image2.png",moviePath: "assets/nanami.mp4"),
  RecommendItem(name: "The Dark Knight", imagePath: "assets/image3.jpg",moviePath: "assets/nanami.mp4"),
  RecommendItem(name: "Tenet", imagePath: "assets/image4.png",moviePath: "assets/nanami.mp4"),
  RecommendItem(name: "Dunkirk", imagePath: "assets/image5.png",moviePath: "assets/nanami.mp4"),
  RecommendItem(name: "Memento", imagePath: "assets/image1.png",moviePath: "assets/nanami.mp4"),
  RecommendItem(name: "The Prestige", imagePath: "assets/image2.png",moviePath: "assets/nanami.mp4"),
  RecommendItem(name: "Batman Begins", imagePath: "assets/image3.jpg",moviePath: "assets/nanami.mp4"),
  RecommendItem(name: "Oppenheimer", imagePath: "assets/image4.png",moviePath: "assets/nanami.mp4"),
  RecommendItem(name: "Following", imagePath: "assets/image5.png",moviePath: "assets/nanami.mp4"),
];
}