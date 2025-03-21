import 'package:flutter/material.dart';
import 'screens/menu_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant Menu',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MenuListScreen(),
    );
  }
}
