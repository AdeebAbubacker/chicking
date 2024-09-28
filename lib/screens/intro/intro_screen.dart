import 'package:auxzon/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background image - 40% of the screen
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: WaveClipper(),
              child: Image.asset(
                'assets/image-3.jpg', // Replace with your image path
                fit: BoxFit.cover,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5, // 40% height
              ),
            ),
          ),
          // Yellow container - 60% of the screen
          Positioned(
            top: MediaQuery.of(context).size.height * 0.55, // Starts after 40%
            left: 0,
            right: 0,
            bottom: 0, // Takes the rest of the screen (60%)
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white, // Yellow background
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                        Padding(
                          padding: const EdgeInsets.only(right: 3),
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 3),
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 3),
                          child: Container(
                            width: 20,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.amber[700],
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    // Get Started Button
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          AppRoutes.navigateToHome(context);
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
                    const SizedBox(height: 30)
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
  Widget buildDot({required Color color, double? width}) {
    return Container(
      width: width ?? 8,
      height: 8,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Start from the bottom-left corner of the widget
    path.lineTo(0, size.height); // Move to the bottom-left corner

    // Define the control point and end point for the curve bulging upwards
    var controlPoint = Offset(
        size.width / 2, size.height - 100); // Control point above the bottom
    var endPoint =
        Offset(size.width, size.height); // End at the bottom-right corner

    // Create a smooth curve from bottom-left to bottom-right
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    // Continue drawing straight to the top-right corner
    path.lineTo(size.width, 0);

    // Draw a line back to the bottom-left corner to complete the shape
    path.lineTo(0, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
