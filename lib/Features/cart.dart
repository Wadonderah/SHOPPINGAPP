// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoppingapp/Features/product.dart';

class Cart extends StatelessWidget {
  final List<Product> cartItems;

  const Cart({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: cartItems.isEmpty
          ? Center(child: Text('Your cart is empty'))
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final product = cartItems[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text('${product.price} KES'),
                );
              },
            ),
    );
  }
}
