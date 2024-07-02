import 'package:flutter/material.dart';
import 'product.dart';
import 'order_successful.dart';

class Checkout extends StatelessWidget {
  final Product product;

  const Checkout({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You are buying: ${product.name}'),
            Text('Total: ${product.price} KES'),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Confirm Purchase'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrderSuccessful(),
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
