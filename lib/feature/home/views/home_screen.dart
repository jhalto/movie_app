import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/feature/home/controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Create")
    );
  }
}