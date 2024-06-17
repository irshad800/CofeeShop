import 'package:cofeeshop/components/cofeetile.dart';
import 'package:cofeeshop/models/cofee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/cofeeshop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(cofee cofee) {
    Provider.of<CofeeShop>(context, listen: false).addItemToCart(cofee);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Successfully added to cart"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CofeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Text(
                "How would you like your coffee?",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: value.coffeeshop.length,
                      itemBuilder: (context, index) {
                        cofee eachCofee = value.coffeeshop[index];
                        return Cofeetile(
                          coffee: eachCofee,
                          onPressed: () => addToCart(eachCofee),
                          icon: Icon(Icons.add),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
