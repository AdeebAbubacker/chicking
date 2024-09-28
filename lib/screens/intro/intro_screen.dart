import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image - 40% of the screen
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/image-3.jpg', // Replace with your image path
              fit: BoxFit.cover,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5, // 40% height
            ),
          ),
          // Yellow container - 60% of the screen
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4, // Starts after 40%
            left: 0,
            right: 0,
            bottom: 0, // Takes the rest of the screen (60%)
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white, // Yellow background
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50),
                    const Text(
                      'The Fastest In\nDelivery Food',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Our job is to fill your tummy with\n'
                      'delicious food and fast delivery.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Dots indicator
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildDot(Colors.grey),
                        buildDot(Colors.red),
                        buildDot(Colors.grey),
                      ],
                    ),
                    Spacer(),
                    // Get Started Button
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add button action here
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          backgroundColor: Colors.red,
                        ),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Function to build dots for the indicator
  Widget buildDot(Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: GetStartedScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class GetStartedScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background image - 40% of the screen
//           Positioned(
//             top: 0,
//             left: 0,
//             right: 0,
//             child: Image.asset(
//               'assets/image-1.jpg', // Replace with your image path
//               fit: BoxFit.cover,
//               width: double.infinity,
//               height: MediaQuery.of(context).size.height * 0.4, // 40% height
//             ),
//           ),
//           // Clipped yellow container with oval top curve - 60% of the screen
//           Positioned(
//             top: MediaQuery.of(context).size.height * 0.4, // Starts after 40%
//             left: 0,
//             right: 0,
//             bottom: 0,
//             child: ClipPath(
//               clipper: OvalTopClipper(),
//               child: Container(
//                 color: Colors.amber, // Yellow background
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       // Text section
//                       const Text(
//                         'The Fastest In\nDelivery Food',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 28,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                       const SizedBox(height: 10),
//                       const Text(
//                         'Our job is to fill your tummy with\n'
//                         'delicious food and fast delivery.',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 16,
//                           color: Colors.grey,
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       // Dots indicator
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           buildDot(Colors.grey),
//                           buildDot(Colors.red),
//                           buildDot(Colors.grey),
//                         ],
//                       ),
//                       const SizedBox(height: 30),
//                       // Get Started Button
//                       SizedBox(
//                         width: double.infinity,
//                         height: 60,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             // Add button action here
//                           },
//                           style: ElevatedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                             backgroundColor: Colors.red,
//                           ),
//                           child: const Text(
//                             'Get Started',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Function to build dots for the indicator
//   Widget buildDot(Color color) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 4),
//       width: 8,
//       height: 8,
//       decoration: BoxDecoration(
//         color: color,
//         shape: BoxShape.circle,
//       ),
//     );
//   }
// }

// Custom Clipper for oval top curve
class OvalTopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Starting from the bottom-left
    path.lineTo(0, size.height);

    // Drawing a curve from the bottom-left to the top-right
    path.quadraticBezierTo(
      size.width / 2, 0, // Control point (center of the top)
      size.width, size.height, // End point (bottom-right)
    );

    // Closing the path to form a rectangle with a curve at the top
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // No need to reclip if the clip doesn't change
  }
}
