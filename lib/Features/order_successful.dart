// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

class OrderSuccessful extends StatelessWidget {
  const OrderSuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Successful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Thank you for your purchase!'),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Back to Shopping'),
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
