// // import 'package:flutter/material.dart';

// // class Testing extends StatefulWidget {
// //   const Testing({super.key});

// //   @override
// //   State<Testing> createState() => _TestingState();
// // }

// // class _TestingState extends State<Testing> {
// //   bool _moveText = false;
// //   double _rotationAngle = 0.0; // Initial rotation angle

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SafeArea(
// //         child: Stack(
// //           children: [
// //             Column(
// //               children: [
// //                 Row(
// //                   children: [
// //                     const Spacer(),
// //                     Padding(
// //                       padding: const EdgeInsets.all(8.0),
// //                       child: Container(
// //                         width: 40,
// //                         height: 40,
// //                         color: Colors.red,
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //                 const Spacer(),
// //                 ElevatedButton(
// //                   onPressed: () {
// //                     setState(() {
// //                       _moveText = !_moveText;
// //                       if (_moveText) {
// //                         _rotationAngle += 10; // Trigger 10 full rotations
// //                       }
// //                     });
// //                   },
// //                   child: const Text("Animate text"),
// //                 ),
// //                 const Spacer(),
// //               ],
// //             ),
// //             AnimatedPositioned(
// //               duration: const Duration(
// //                   milliseconds: 400),
// //               left: _moveText
// //                   ? MediaQuery.of(context).size.width - 48
// //                   : 120,
// //               top: _moveText
// //                   ? 16
// //                   : MediaQuery.of(context).size.height /
// //                       2,
// //               child: AnimatedRotation(
// //                 turns: _rotationAngle,
// //                 duration: const Duration(
// //                     seconds: 4),
// //                 child: const Text(
// //                   'aaa',
// //                   style: TextStyle(fontSize: 24, color: Colors.black),
// //                 ),
// //               ),
// //               onEnd: () {
// //                 setState(() {
// //                   // Stop rotation when position animation ends
// //                   _rotationAngle = 0;
// //                 });
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:auxzon/core/model/food_model.dart';
// import 'package:flutter/material.dart';
// import 'dart:async';

// class YourWidget extends StatefulWidget {
//   dynamic foodModel = FoodModel(
//       img: 'assets/common/image-1.jpg',
//       deatiledImg: 'assets/common/image-1.jpg',
//       food: 'food',
//       shop: 'shop',
//       price: 'price',
//       rating: 'rating'); // Assuming you have a FoodModel defined
//   YourWidget({Key? key, this.foodModel}) : super(key: key);

//   @override
//   _YourWidgetState createState() => _YourWidgetState();
// }

// class _YourWidgetState extends State<YourWidget> {
//   bool _moveText = false; // To control the animation state
//   double _rotationAngle = 0.0; // Initial rotation angle

//   void _playAudio(String path) {
//     // Your audio playing logic
//   }

//   @override
//   Widget build(BuildContext context) {
//     double imageHeight = 100; // Set your image height
//     double imageWidth = 100; // Set your image width

//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned(
//             left: 0,
//             right: 0,
//             bottom: MediaQuery.of(context).size.height * 0.02,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: SizedBox(
//                 width: double.infinity,
//                 height: 49,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     if (!_moveText) {
//                       // Start the animation
//                       setState(() {
//                         _moveText = true;
//                       });
//                       _playAudio('assets/audio/added to cart.mp3');

//                       // Automatically set back to false after animation duration
//                       Future.delayed(const Duration(milliseconds: 900), () {
//                         setState(() {
//                           // Optional reset logic can be handled here if needed
//                         });
//                       });
//                     }
//                     // If already moving, do nothing
//                   },
//                   style: ElevatedButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     backgroundColor: Colors.red,
//                   ),
//                   child: const Text(
//                     'Add to Cart',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           AnimatedPositioned(
//             duration: _moveText
//                 ? const Duration(milliseconds: 900)
//                 : const Duration(milliseconds: 1),
//             right: _moveText ? 10 : 0, // Move to the right
//             left: _moveText ? null : 0,
//             top: _moveText
//                 ? 16 // Move to the top when animated
//                 : (MediaQuery.of(context).size.height * 0.5 -
//                     imageHeight -
//                     38), // Original position
//             child: AnimatedRotation(
//               turns: _rotationAngle,
//               duration: const Duration(seconds: 4),
//               child: Center(
//                 child: AnimatedContainer(
//                   duration: _moveText
//                       ? const Duration(milliseconds: 900)
//                       : const Duration(milliseconds: 1),
//                   width: _moveText ? 50 : imageWidth,
//                   height: _moveText ? 50 : imageHeight,
//                   child: Image.asset(
//                     widget.foodModel!.deatiledImg,
//                     fit: BoxFit.cover,
//                     height: _moveText ? 50 : imageHeight,
//                     width: _moveText ? 50 : imageWidth,
//                   ),
//                 ),
//               ),
//             ),
//             onEnd: () {
//               setState(() {
//                 _rotationAngle = 0; // Reset rotation angle after animation ends
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
