import 'package:flutter/material.dart';

class FoodDetailsScreen extends StatelessWidget {
  final String name;
  final String image;

  const FoodDetailsScreen({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
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
            Text(
              'Enjoy your delicious $name!',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
