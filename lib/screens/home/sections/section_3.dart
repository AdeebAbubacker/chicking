import 'package:auxzon/core/constants/text_styles.dart';
import 'package:auxzon/core/model/food_model.dart';
import 'package:auxzon/core/routes/app_routes.dart';
import 'package:auxzon/testing/testing.dart';
import 'package:auxzon/widgets/search_delegate.dart';
import 'package:flutter/material.dart';

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 350,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  color: const Color(0XFFEA4444),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.5, // 40% of screen width
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              Text(
                                "Location",
                                style: TextStyles.rubik16WhiteW500,
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "St, Abigoael",
                                    style: TextStyles.rubik16WhiteW500,
                                  ),
                                  const Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Promo Buy 1 Get 1 more!",
                                style: TextStyles.rubik23WhiteW700,
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Order Now",
                                    style: TextStyles.rubik14WredeW600,
                                  ))
                            ],
                          ),
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            const Spacer(),
                            Image.asset(
                              'assets/image-8.png',
                              width: MediaQuery.of(context).size.width *
                                  0.45, // 43% of screen width for the image
                              height: 290,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 25, // Pushes the search bar partially outside
                  left: 16,
                  right: 16,
                  child: GestureDetector(
                    onTap: () {
                      // Trigger search when tapped
                      showSearch(
                        context: context,
                        delegate:
                            ProductSearchDelegate(), // Your custom search delegate
                      );
                    },
                    child: Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey),
                          SizedBox(width: 10),
                          Text(
                            'Search food, restaurant, etc',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Wrap(
              runSpacing: 20,
              spacing: 20,
              children: [
                Container(
                  width: 70,
                  height: 82,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                            color: Color(0XFFFBD3DB),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: const Center(
                          child: Icon(
                            Icons.rice_bowl_sharp,
                            color: Color.fromARGB(255, 104, 104, 104),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Rice",
                        style: TextStyles.rubik12WredeW500,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 70,
                  height: 82,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                            color: Color(0XFFFBD3DB),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: const Center(
                          child: Icon(
                            Icons.emoji_food_beverage_outlined,
                            color: Color.fromARGB(255, 104, 104, 104),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Snacks",
                        style: TextStyles.rubik12WredeW500,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 70,
                  height: 82,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                            color: Color(0XFFFBD3DB),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: const Center(
                          child: Icon(
                            Icons.beenhere,
                            color: Color.fromARGB(255, 104, 104, 104),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Drinks",
                        style: TextStyles.rubik12WredeW500,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 70,
                  height: 82,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                            color: Color(0XFFFBD3DB),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: const Center(
                          child: Icon(
                            Icons.category_outlined,
                            color: Color.fromARGB(255, 104, 104, 104),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "More",
                        style: TextStyles.rubik12WredeW500,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          TopRatedFood(),
          const SizedBox(height: 30),
          const RestaurantNearYou()
        ],
      ),
    );
  }
}

class TopRatedFood extends StatelessWidget {
  TopRatedFood({
    super.key,
  });

  List<FoodModel> foodList = [
    const FoodModel(
      img: 'assets/image-1.jpg',
      food: 'Burger beef anjaz',
      shop: 'Burger Bos',
      price: 'Rs 45',
      rating: '4.5',
    ),
    const FoodModel(
      img: 'assets/image-2.jpg',
      food: 'Burger beef anjaz',
      shop: 'Burger Bos',
      price: 'Rs 225',
      rating: '4.7',
    ),
    const FoodModel(
      img: 'assets/image-3.jpg',
      food: 'Burger beef anjaz',
      shop: 'Burger Bos',
      price: 'Rs 115',
      rating: '3.7',
    ),
    const FoodModel(
      img: 'assets/image-4.jpg',
      food: 'Burger beef anjaz',
      shop: 'Burger Bos',
      price: 'Rs 230',
      rating: '4.0',
    ),
    const FoodModel(
      img: 'assets/image-5.jpg',
      food: 'Burger beef anjaz',
      shop: 'Burger Bos',
      price: 'Rs 100',
      rating: '3.5',
    ),
    const FoodModel(
      img: 'assets/image-6.jpg',
      food: 'Burger beef anjaz',
      shop: 'Burger Bos',
      price: 'Rs 250',
      rating: '4.9',
    ),
    const FoodModel(
      img: 'assets/image-7.jpg',
      food: 'Burger beef anjaz',
      shop: 'Burger Bos',
      price: 'Rs 300',
      rating: '4.5',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Top Rated Food",
            style: TextStyles.rubik16blackW600,
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 205,
            child: ListView.builder(
              padding: const EdgeInsets.all(0),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: foodList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      right: 8, bottom: 8, top: 8, left: 3),
                  child: InkWell(
                    onTap: () {
                      AppRoutes.navigateToProductScreen(context);
                    },
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 4, // This controls the shadow effect
                      shadowColor: Colors.grey.withOpacity(0.5),
                      child: SizedBox(
                        width: 165,
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        height: 100,
                                        width: double.infinity,
                                        child: Image.asset(
                                          foodList[index].img,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 10,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 235, 235, 235),
                                              borderRadius:
                                                  BorderRadius.circular(9)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.amber[700],
                                                ),
                                                Text(
                                                  '(${foodList[index].rating})',
                                                  style: TextStyles
                                                      .rubik12bluegreyW600,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              const SizedBox(height: 10),
                              Text(
                                foodList[index].food,
                                style: TextStyles.rubik14blackW600,
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    foodList[index].shop,
                                    style: TextStyles.rubik12greyW600,
                                  ),
                                  const Spacer(),
                                  Text(
                                    foodList[index].price,
                                    style: TextStyles.rubik14blackW600,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class RestaurantNearYou extends StatelessWidget {
  const RestaurantNearYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                "Restaurant near you",
                style: TextStyles.rubik16blackW600,
              ),
              const Spacer(),
              Text(
                "View all",
                style: TextStyles.rubik12greyW600,
              )
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 205,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      right: 8, bottom: 8, top: 8, left: 3),
                  child: InkWell(
                    onTap: () {
                      AppRoutes.navigateToProductScreen(context);
                    },
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 4, // This controls the shadow effect
                      shadowColor: Colors.grey.withOpacity(0.5),
                      child: SizedBox(
                        width: 165,
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    12), // Set the border radius for rounded edges
                                child: SizedBox(
                                  height: 100,
                                  width:
                                      double.infinity, // Set to maximum width
                                  child: Image.asset(
                                    'assets/image-2.jpg',
                                    fit: BoxFit
                                        .cover, // Adjusts the image to cover the width
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Burger beef anjaz",
                                style: TextStyles.rubik14blackW600,
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    'Burger Bos',
                                    style: TextStyles.rubik12greyW600,
                                  ),
                                  const Spacer(),
                                  Text(
                                    'Rs 45.0',
                                    style: TextStyles.rubik14blackW600,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
