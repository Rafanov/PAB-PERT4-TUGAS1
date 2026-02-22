import 'package:flutter/material.dart';
import 'cart_item.dart';
import 'product.dart';

class CartModel extends ChangeNotifier {
  final Map<String, CartItem> _items = {};

  List<CartItem> get items => _items.values.toList();

  int get itemCount => _items.length;

  int get totalQuantity {
    int total = 0;
    for (var item in _items.values) {
      total += item.quantity;
    }
    return total;
  }

  double get totalPrice {
    double total = 0;
    for (var item in _items.values) {
      total += item.totalPrice;
    }
    return total;
  }

  void addItem(Product product) {
    if (_items.containsKey(product.id)) {
      _items[product.id]!.quantity++;
    } else {
      _items[product.id] = CartItem(product: product);
    }
    notifyListeners();
  }

  void removeItem(String id) {
    _items.remove(id);
    notifyListeners();
  }

  void increaseQuantity(String id) {
    if (_items.containsKey(id)) {
      _items[id]!.quantity++;
      notifyListeners();
    }
  }

  void decreaseQuantity(String id) {
    if (!_items.containsKey(id)) return;

    if (_items[id]!.quantity > 1) {
      _items[id]!.quantity--;
    } else {
      _items.remove(id);
    }

    notifyListeners();
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}
