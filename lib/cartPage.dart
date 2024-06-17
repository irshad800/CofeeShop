import 'package:cofeeshop/components/cofeetile.dart';
import 'package:cofeeshop/models/cofee.dart';
import 'package:cofeeshop/models/cofeeshop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(cofee coffee) {
    Provider.of<CofeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  void payNow() {
    // Implement payment logic here
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CofeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                "Your Cart",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: value.usercart.length,
                  itemBuilder: (context, index) {
                    cofee eachCofee = value.usercart[index];
                    return Cofeetile(
                      coffee: eachCofee,
                      onPressed: () => removeFromCart(eachCofee),
                      icon: Icon(Icons.delete),
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: payNow,
                child: Container(
                  padding: const EdgeInsets.all(25.0),
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Center(
                    child: Text(
                      "Pay Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
