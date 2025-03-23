import 'package:flutter/material.dart';
import 'food_details_screen.dart';

class MenuListScreen extends StatelessWidget {
  const MenuListScreen({super.key});

  final List<Map<String, String>> menuItems = const [
    {'name': 'Pork Sinigang', 'image': 'assets/images/pork_sinigang.jpg'},
    {'name': 'Adobo', 'image': 'assets/images/adobo.jpg'},
    {'name': 'Pork Sisig', 'image': 'assets/images/pork_sisig.jpg'},
    {'name': 'Pinakbet', 'image': 'assets/images/pinakbet.jpg'},
    {'name': 'Halo-Halo', 'image': 'assets/images/halohalo.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        backgroundColor: const Color.fromARGB(255, 185, 96, 12),
      ),
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
