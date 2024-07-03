// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoppingapp/Features/product.dart';
import 'package:shoppingapp/Features/order_successful.dart';

class Checkout extends StatelessWidget {
  final Product product;

  const Checkout({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You are buying: ${product.name}'),
            Text('Total: ${product.price} KES'),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Confirm Purchase'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderSuccessful(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
