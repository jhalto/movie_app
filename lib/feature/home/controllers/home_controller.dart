import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movie_app/feature/home/model/movie_model.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';




class HomeController extends GetxController{
  TextEditingController searchController = TextEditingController();
 var selectedIndex = 0.obs;
 var selectedCaro = "assets/image1.png".obs;
 var selectedVideo = "assets/nanami.mp4".obs;
 var selectedIndexReco = 0.obs;
 var selectedRecommended = "assets/image1.png".obs;

  var caroselItems = <RecommendItem>[
  RecommendItem(id: "1", name: "Inception sdhjfsjhk fksdjhfk dsfkjjhas d kafjhds", imagePath: "assets/image1.png",moviePath: "assets/nanami.mp4",liked: false),
  RecommendItem(id: "2",name: "Interstellar", imagePath: "assets/image2.png",moviePath: "assets/nanami.mp4",liked: false),
  RecommendItem(id: "3",name: "The Dark Knight", imagePath: "assets/image3.jpg",moviePath: "assets/nanami.mp4",liked: false),
  RecommendItem(id: "4",name: "Tenet", imagePath: "assets/image4.png",moviePath: "assets/nanami.mp4",liked: false),
  RecommendItem(id: "5",name: "Dunkirk", imagePath: "assets/image5.png",moviePath: "assets/nanami.mp4",liked: false),
  RecommendItem(id: "6",name: "Memento", imagePath: "assets/image1.png",moviePath: "assets/nanami.mp4",liked: false),
  RecommendItem(id: "7",name: "The Prestige", imagePath: "assets/image2.png",moviePath: "assets/nanami.mp4",liked: false),
  RecommendItem(id: "8",name: "Batman Begins", imagePath: "assets/image3.jpg",moviePath: "assets/nanami.mp4",liked: false),
  RecommendItem(id: "9",name: "Oppenheimer", imagePath: "assets/image4.png",moviePath: "assets/nanami.mp4",liked: false),
  RecommendItem(id: "10",name: "Following", imagePath: "assets/image5.png",moviePath: "assets/nanami.mp4",liked: false),
].obs;
 var recommendItems = <RecommendItem>[
  RecommendItem(id: "1",name: "Inception sdhjfsjhk fksdjhfk dsfkjjhas d kafjhds", imagePath: "assets/image1.png",moviePath: "assets/nanami.mp4",liked: false),
  RecommendItem(id: "2",name: "Interstellar", imagePath: "assets/image2.png",moviePath: "assets/nanami.mp4",liked: false),
  RecommendItem(id: "3",name: "The Dark Knight", imagePath: "assets/image3.jpg",moviePath: "assets/nanami.mp4",liked: false),
  RecommendItem(id: "4",name: "Tenet", imagePath: "assets/image4.png",moviePath: "assets/nanami.mp4",liked: false),
  RecommendItem(id: "5",name: "Dunkirk", imagePath: "assets/image5.png",moviePath: "assets/nanami.mp4",liked: false),
  RecommendItem(id: "6",name: "Memento", imagePath: "assets/image1.png",moviePath: "assets/nanami.mp4",liked: false),
  RecommendItem(id: "7",name: "The Prestige", imagePath: "assets/image2.png",moviePath: "assets/nanami.mp4",liked: false),
  RecommendItem(id: "8",name: "Batman Begins", imagePath: "assets/image3.jpg",moviePath: "assets/nanami.mp4",liked: false),
  RecommendItem(id: "9",name: "Oppenheimer", imagePath: "assets/image4.png",moviePath: "assets/nanami.mp4",liked: false),
  RecommendItem(id: "10",name: "Following", imagePath: "assets/image5.png",moviePath: "assets/nanami.mp4",liked: false),
].obs;

  
  var allItems = <RecommendItem>[].obs;
  var filteredItems = <RecommendItem>[].obs;

  @override
  void onInit() {
    super.onInit();

    allItems.value = caroselItems; // your data source
    
    // Start with empty filtered list
    filteredItems.clear();

    searchController.addListener(() {
      filterItems(searchController.text);
    });
  }

  void filterItems(String query) {
  if (query.isEmpty) {
    filteredItems.clear(); // or filteredItems.value = []
  } else {
    filteredItems.value = allItems.where((movie) =>
      movie.name.toLowerCase().contains(query.toLowerCase())
    ).toList();
  }
  print("Filtered items count: ${filteredItems.length}");
  for (var item in filteredItems) {
    print(item.name);
  }
}


  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
  var favouriteItems = <RecommendItem>[].obs;
  void selectRecommendItem(int index) {
    selectedIndex.value = index;
    selectedRecommendItem.value = caroselItems[index];
  }
 var selectedRecommendItem = Rx<RecommendItem?>(null);
void addFavourite(RecommendItem movie) {
  // Check if item already exists in favorites by comparing unique IDs or references
  final isAlreadyFavourite = favouriteItems.any((item) => item.id == movie.id);

  if (isAlreadyFavourite) {
    favouriteItems.removeWhere((item) => item.id == movie.id);
    movie.liked.value = false;
    print('Removed from favorites: ${movie.name}');
  } else {
    favouriteItems.add(movie);
    movie.liked.value = true;
    print('Added to favorites: ${movie.name}');
  }

  // Refresh observable lists to update UI
  favouriteItems.refresh();
  recommendItems.refresh();
  caroselItems.refresh();
}

void shareMovieDetails(String title) {
  final String message = '''
🎬 *$title*


Check it out now!
''';

  Share.share(message);
}

void shareToWhatsApp(String message) async {
  final url = Uri.parse("https://wa.me/?text=${Uri.encodeComponent(message)}");
  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else {
    print("Could not launch WhatsApp");
  }
}
void shareToFacebook(String text) async {
  final facebookUrl = Uri.parse("https://www.facebook.com/sharer/sharer.php?u=${Uri.encodeComponent(text)}");
  if (await canLaunchUrl(facebookUrl)) {
    await launchUrl(facebookUrl, mode: LaunchMode.externalApplication);
  } else {
    print("Could not launch Facebook");
  }
}
}