import 'package:auxzon/core/constants/text_styles.dart';
import 'package:auxzon/core/functions/audio_player.dart';
import 'package:auxzon/core/model/food_model.dart';
import 'package:auxzon/main.dart';
import 'package:auxzon/testing/testing.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  final FoodModel? foodModel;
  const ProductDetailScreen({
    super.key,
    this.foodModel,
  });
  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int currentvalue = 1;
  void _playAudio(String assetPath) async {
    try {
      // Cast the audioHandler to AudioPlayerHandler to access the custom method
      (audioServiceSingleton.audioHandler as AudioPlayerHandler)
          .playAudioFromAsset(assetPath);
    } catch (e) {
      print("Error playing audio: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFEEEEEE),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Color.fromARGB(255, 205, 83, 109),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: const Icon(
                          Icons.more_horiz_outlined,
                          color: Color(0XFFDA0023),
                        ),
                      ),
                    ],
                  ),
                ),

                // Product details section
                const Spacer(),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 245, 245, 245),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height *
                                0.15), // 15% of screen height
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(25)),
                            height: 41,
                            width: 125,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (currentvalue > 1) {
                                        _playAudio('assets/audio/counter.mp3');
                                        currentvalue -= 1;
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '$currentvalue',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _playAudio('assets/audio/counter.mp3');
                                      if (currentvalue < 99) {
                                        currentvalue += 1;
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height *
                                0.05), // 5% of screen height
                        Row(
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${widget.foodModel?.food}',
                                  style: TextStyles.rubik16blackW700,
                                ),
                                Text(
                                  '${widget.foodModel?.shop}',
                                  style: TextStyles.rubik12bluegreyW500,
                                ),
                              ],
                            ),
                            const Spacer(),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: '\$', // Red currency symbol
                                      style: TextStyles.rubik20red700),
                                  TextSpan(
                                      text: ' 6.89', // Default amount color
                                      style: TextStyles.rubik20black700),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.yellow),
                            const SizedBox(width: 2),
                            Text(
                              '${widget.foodModel?.rating}',
                              style: TextStyles.rubik14bluegreyW500,
                            ),
                            const SizedBox(width: 10),
                            const Icon(Icons.bolt, color: Colors.orange),
                            const SizedBox(width: 2),
                            Text(
                              '150 Kcal',
                              style: TextStyles.rubik14bluegreyW500,
                            ),
                            const SizedBox(width: 10),
                            const Icon(Icons.timer, color: Colors.green),
                            const SizedBox(width: 2),
                            Text(
                              '5-10 Min',
                              style: TextStyles.rubik14bluegreyW500,
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        const ProductDescriptionWidget(
                          dynamicText:
                              'This beef burger uses 100% quality beef with sliced tomatoes, cucumbers, vegetables and onions.',
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: MediaQuery.of(context).size.height * 0.5,
              child: Center(
                child: Image.asset(
                  widget.foodModel!.deatiledImg,
                  height: 200,
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: MediaQuery.of(context).size.height * 0.02,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  width: double.infinity,
                  height: 49,
                  child: ElevatedButton(
                    onPressed: () {
                      _playAudio('assets/audio/added to cart.mp3');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.red,
                    ),
                    child: const Text(
                      'Add to Cart',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  String truncateWithReadMore(String text, int limit) {
    if (text.length > limit) {
      return '${text.substring(0, limit)}...';
    } else {
      return text;
    }
  }
}

class ProductDescriptionWidget extends StatelessWidget {
  final String dynamicText;
  const ProductDescriptionWidget({
    super.key,
    required this.dynamicText,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: truncateWithReadMore(
              dynamicText, // Replace with your dynamic text variable
              70,
            ),
            style: TextStyles.nunito14greyW600, // Normal text style
          ),
          if (dynamicText.length >
              40) // Show "Read More" only if text exceeds 120 characters
            TextSpan(
              text: 'Read More',
              style: TextStyle(
                fontSize:
                    TextStyles.nunito14greyW600.fontSize, // Match the font size
                fontWeight:
                    TextStyles.nunito14greyW600.fontWeight, // Match font weight
                fontFamily:
                    TextStyles.nunito14greyW600.fontFamily, // Match font family
                color: Colors.red, // Red color for "Read More"
              ),
            ),
        ],
      ),
    );
  }

  String truncateWithReadMore(String text, int limit) {
    if (text.length > limit) {
      return '${text.substring(0, limit)}...';
    } else {
      return text;
    }
  }
}
