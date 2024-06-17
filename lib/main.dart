import 'package:cofeeshop/HomePage.dart';
import 'package:cofeeshop/models/cofeeshop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp()); // Ensure the main function uses MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>
          CofeeShop(), // Provides the CofeeShop instance to the widget tree
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
