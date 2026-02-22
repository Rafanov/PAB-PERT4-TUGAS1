import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartModel>();

    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ringkasan Pesanan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: cart.itemsList.length,
                itemBuilder: (_, index) {
                  final item = cart.itemsList[index];
                  return ListTile(
                    title: Text(item.product.name),
                    subtitle: Text(
                      'Rp ${item.product.price.toStringAsFixed(0)} x ${item.quantity}',
                    ),
                    trailing: Text('Rp ${item.totalPrice.toStringAsFixed(0)}'),
                  );
                },
              ),
            ),
            Text(
              'Total: Rp ${cart.totalPrice.toStringAsFixed(0)}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  cart.clear();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Order placed!')),
                  );
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: const Text('Konfirmasi Order'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
