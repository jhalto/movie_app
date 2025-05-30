import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';
import 'package:movie_app/feature/home/controllers/home_controller.dart';
import 'package:movie_app/feature/home/views/home_screen.dart';
import 'package:movie_app/feature/library/views/content_library_view.dart';

class NavbarController extends HomeController{

  @override
  
  // ignore: overridden_fields
  RxInt selectedIndex = 0.obs;


 var pages = [
   HomeScreen(),
   Center(child: Text("live"),),  
   ContentLibraryView(),  
   Center(child: Text("Favorite"),),  
   Center(child: Text("Profile"),),  
 ];
}