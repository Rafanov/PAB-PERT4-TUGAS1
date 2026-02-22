import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../models/cart_model.dart';
import 'cart_page.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      Product(
        id: '1',
        name: 'Laptop Gaming',
        price: 15000000,
        imageUrl: 'https://picsum.photos/200?1',
        category: 'Electronics',
      ),
      Product(
        id: '2',
        name: 'Smartphone',
        price: 8000000,
        imageUrl: 'https://picsum.photos/200?2',
        category: 'Electronics',
      ),
      Product(
        id: '3',
        name: 'Headphones',
        price: 1500000,
        imageUrl: 'https://picsum.photos/200?3',
        category: 'Audio',
      ),
      Product(
        id: '4',
        name: 'Smart Watch',
        price: 3000000,
        imageUrl: 'https://picsum.photos/200?4',
        category: 'Wearable',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Product List"),
        leading: Consumer<CartModel>(
          builder: (context, cart, _) {
            return Stack(
              children: [
                IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const CartPage()),
                    );
                  },
                ),
                if (cart.itemCount > 0)
                  Positioned(
                    right: 6,
                    top: 6,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        cart.itemCount.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.72,
        ),
        itemBuilder: (_, index) {
          final product = products[index];

          return Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    product.imageUrl,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.category,
                        style: const TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        product.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "Rp ${product.price.toStringAsFixed(0)}",
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            context.read<CartModel>().addItem(product);
                          },
                          child: const Text("Add to Cart"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
