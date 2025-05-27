import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';
import 'package:movie_app/feature/home/controllers/home_controller.dart';
import 'package:movie_app/feature/home/views/home_screen.dart';

class NavbarController extends HomeController{

  RxInt selectedIndex = 0.obs;


 var pages = [
   HomeScreen(),
   Center(child: Text("live"),),  
   Center(child: Text("library"),),  
   Center(child: Text("Favorite"),),  
   Center(child: Text("Profile"),),  
 ];
}