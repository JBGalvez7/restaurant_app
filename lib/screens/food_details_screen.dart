import 'package:flutter/material.dart';

class FoodDetailsScreen extends StatelessWidget {
  final String name;
  final String image;

  const FoodDetailsScreen({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    String description;

    switch (name) {
      case 'Pork Sinigang':
        description =
            'A savory and tangy pork soup made with tender pork, tamarind, and fresh vegetables. A comforting Filipino classic!';
        break;
      case 'Adobo':
        description =
            'A rich and flavorful dish of pork or chicken braised in soy sauce, vinegar, garlic, and aromatic spices. A Filipino favorite!';
        break;
      case 'Pork Sisig':
        description =
            'A sizzling, crispy, and flavorful dish made with seasoned chopped pork, onions, chili, and a splash of calamansi.';
        break;
      case 'Pinakbet':
        description =
            'A nutritious vegetable stew infused with shrimp paste, featuring a colorful mix of eggplant, bitter melon, and squash.';
        break;
      case 'Halo-Halo':
        description =
            'A refreshing and vibrant dessert made with crushed ice, sweetened fruits, jelly, and topped with creamy ube ice cream.';
        break;
      default:
        description = 'Enjoy your delicious $name!';
    }

    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              height: 250,
              child: Image.asset(image, fit: BoxFit.cover),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 1.5),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Text(
                  description,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Menu'),
            ),
          ],
        ),
      ),
    );
  }
}
