import 'package:auxzon/screens/home/layout/home_layout.dart';
import 'package:auxzon/screens/product/product_screen.dart';
import 'package:flutter/material.dart';

// class AppRoutes {
//   static void navigateToHome(BuildContext context) {
//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(builder: (context) => HomeLayout()),
//     );
//   }

//   static void navigateToProductScreen(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => ProductDetailScreen()),
//     );
//   }
// }

void navigateToHomeCleared(BuildContext context) =>
    Navigator.of(context).pushNamedAndRemoveUntil(
      '/home',
      (Route route) => false,
    );

void navigateToProductDetails(
  BuildContext context,
) =>
    Navigator.of(context).pushNamed('/productDetails');
