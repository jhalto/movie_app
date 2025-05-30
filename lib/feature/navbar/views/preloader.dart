// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter/painting.dart'; // <-- Important!

// class AppLoader extends StatefulWidget {
//   @override
//   _AppLoaderState createState() => _AppLoaderState();
// }

// class _AppLoaderState extends State<AppLoader> {
//   bool _isReady = false;

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     _precacheSvgs();
//   }

//   Future<void> _precacheSvgs() async {
//     await Future.wait([
//       precachePicture(
//         SvgPicture.asset("assets/home.svg").pictureProvider,
//         context,
//       ),
//       precachePicture(
//         SvgPicture.asset("assets/home_s.svg").pictureProvider,
//         context,
//       ),
//       precachePicture(
//         SvgPicture.asset("assets/live.svg").pictureProvider,
//         context,
//       ),
//       precachePicture(
//         SvgPicture.asset("assets/live_s.svg").pictureProvider,
//         context,
//       ),
//     ]);
//     setState(() {
//       _isReady = true;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (!_isReady) {
//       return Scaffold(
//         backgroundColor: Colors.black,
//         body: Center(child: CircularProgressIndicator()),
//       );
//     }
//     return Scaffold(
//       body: Center(child: Text('SVGs precached!')),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(home: AppLoader()));
// }
