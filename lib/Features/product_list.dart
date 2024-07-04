import 'package:flutter/material.dart';
import 'package:shoppingapp/Features/product.dart';

class ProductList extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Tomatoes', price: 50),
    Product(name: 'Onions', price: 30),
    Product(name: 'Milk', price: 60),
  ];

  final Function(Product) onAddToCart;

  ProductList({required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Shopping App'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('${product.price} KES'),
            trailing: ElevatedButton(
              child: const Text('Add to Cart'),
              onPressed: () {
                onAddToCart(product);
              },
            ),
          );
        },
      ),
    );
  }
}





