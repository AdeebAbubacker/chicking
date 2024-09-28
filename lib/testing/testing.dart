import 'package:auxzon/core/model/food_model.dart';
import 'package:flutter/material.dart';

// SearchDelegate for handling search
class ProductSearchDelegate extends SearchDelegate {
  // Food list to search from
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

  List<FoodModel> filteredList = [];

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        color: Colors.white, // Set the appbar background to white
        iconTheme: IconThemeData(color: Colors.black), // Icons color
      ),
      scaffoldBackgroundColor: Colors.white, // Background of the body
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    // Action buttons on the app bar (like clear search text)
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = ''; // Clear the search field
          showSuggestions(context); // Show all suggestions again
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Leading icon (back arrow to exit search)
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null); // Close the search
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Filtered search results
    filteredList = foodList
        .where((food) => food.food.toLowerCase().contains(query.toLowerCase()))
        .toList();

    if (filteredList.isEmpty) {
      return const Center(
        child: Text('No food found.'),
      );
    }

    return _buildListView(filteredList, context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Show suggestions as the user types
    filteredList = foodList
        .where((food) => food.food.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return _buildListView(filteredList, context);
  }

  Widget _buildListView(List<FoodModel> list, BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset(
            list[index].img,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(list[index].food),
          subtitle: Text('${list[index].price} - ${list[index].shop}'),
          trailing: IconButton(
            icon: const Icon(Icons.close, color: Colors.red),
            onPressed: () {
              // Remove the item from the original list
              foodList.remove(list[index]);
              query = ''; // Clear the search query to update suggestions
              showSuggestions(context); // Refresh suggestions
            },
          ),
          onTap: () {
            query = list[index].food; // Set the search query
            showResults(context); // Show the results based on the suggestion
          },
        );
      },
    );
  }
}
