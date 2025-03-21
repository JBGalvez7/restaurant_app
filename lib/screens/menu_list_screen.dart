import 'package:flutter/material.dart';
import 'food_details_screen.dart';

class MenuListScreen extends StatelessWidget {
  const MenuListScreen({super.key});

  final List<Map<String, String>> menuItems = const [
    {'name': 'Pizza', 'image': 'assets/images/pizza.jpg'},
    {'name': 'Burger', 'image': 'assets/images/burger.jpg'},
    {'name': 'Pasta', 'image': 'assets/images/pasta.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(10),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    menuItems[index]['image']!,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  menuItems[index]['name']!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => FoodDetailsScreen(
                            name: menuItems[index]['name']!,
                            image: menuItems[index]['image']!,
                          ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
