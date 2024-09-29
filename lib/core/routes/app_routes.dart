import 'package:auxzon/screens/home/layout/home_layout.dart';
import 'package:auxzon/screens/product/product_screen.dart';
import 'package:flutter/material.dart';



void navigateToHomeCleared(BuildContext context) =>
    Navigator.of(context).pushNamedAndRemoveUntil(
      '/home',
      (Route route) => false,
    );

void navigateToProductDetails(
  BuildContext context,
) =>
    Navigator.of(context).pushNamed('/productDetails');
