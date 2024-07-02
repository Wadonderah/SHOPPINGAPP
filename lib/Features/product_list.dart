import 'package:flutter/material.dart';
import 'product.dart';
import 'checkout.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  final List<Product> products = const [
    Product(name: 'Tomatoes', price: 50),
    Product(name: 'Onions', price: 30),
    Product(name: 'Milk', price: 60),
    Product(name: 'Bread', price: 45),
    Product(name: 'Sugar', price: 100),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping App'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('${product.price} KES'),
            trailing: ElevatedButton(
              child: const Text('Buy'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Checkout(product: product),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
