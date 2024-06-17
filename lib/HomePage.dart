import 'package:cofeeshop/components/bottomnav.dart';
import 'package:cofeeshop/const.dart';
import 'package:cofeeshop/shopPage.dart';
import 'package:flutter/material.dart';

import 'cartPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedindex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  final List<Widget> pages = [ShopPage(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNav(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: pages[selectedindex],
    );
  }
}
