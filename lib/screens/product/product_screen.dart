import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int currentvalue = 0;
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
                        const SizedBox(height: 90),
                        Center(
                          child: SizedBox(
                            height: 41,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                backgroundColor: Colors.red,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          currentvalue -= 1;
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      )),
                                  const SizedBox(width: 4),
                                  Text(
                                    '$currentvalue',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          currentvalue += 1;
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        const Row(
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Beef Burger',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Cheesy Mozarella',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "Rs 6.89",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        const Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text('4.8'),
                            SizedBox(width: 10),
                            Icon(Icons.bolt, color: Colors.orange),
                            Text('150 Kcal'),
                            SizedBox(width: 10),
                            Icon(Icons.timer, color: Colors.green),
                            Text('5-10 Min'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'This beef burger uses 100% quality beef with sliced tomatoes, cucumbers, vegetables and onions. Read More',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          height: 49,
                          child: ElevatedButton(
                            onPressed: () {},
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
                  'assets/image-8.png',
                  height: 200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class ProductDetailScreen extends StatelessWidget {
//   const ProductDetailScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Column(
//               children: [
//                 const Spacer(), // Spacer pushes everything below it
//                 Container(
//                   width: double.infinity,
//                   height: MediaQuery.of(context).size.height * 0.5,
//                   decoration: const BoxDecoration(
//                     color: Colors.black12,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(45),
//                       topRight: Radius.circular(45),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Positioned(
//               left: 0,
//               right: 0,
//               bottom: MediaQuery.of(context).size.height * 0.4,
//               child: Center(
//                 child: Image.asset(
//                   'assets/image-8.png',
//                   height: 200,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
