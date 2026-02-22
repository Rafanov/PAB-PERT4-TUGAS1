import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartModel>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Cart"),
        actions: [
          if (cart.itemCount > 0)
            IconButton(
              icon: const Icon(Icons.delete_sweep),
              onPressed: () {
                cart.clear();
              },
            ),
        ],
      ),
      body: cart.itemCount == 0
          ? const Center(child: Text("Cart kosong"))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.items.length,
                    itemBuilder: (_, i) {
                      final item = cart.items[i];
                      final product = item.product;

                      return ListTile(
                        leading: Image.network(
                          product.imageUrl,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                        title: Text(product.name),
                        subtitle: Text(
                          "Rp ${product.price.toStringAsFixed(0)}",
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () {
                                cart.decreaseQuantity(product.id);
                              },
                            ),
                            Text(item.quantity.toString()),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                cart.increaseQuantity(product.id);
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                cart.removeItem(product.id);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total: Rp ${cart.totalPrice.toStringAsFixed(0)}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          cart.clear();
                          Navigator.pop(context);
                        },
                        child: const Text("Checkout"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
