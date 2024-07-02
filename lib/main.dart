
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'features/product_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,  // Disable debug banner
      home: ProductList(),
    );
  }
}
