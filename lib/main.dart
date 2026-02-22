import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/cart_model.dart';
import 'pages/home_page.dart';
import 'pages/cart_page.dart';
import 'pages/checkout_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CartModel())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping Cart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(centerTitle: true),
      ),

      // route biar rapi
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/cart': (context) => const CartPage(),
        '/checkout': (context) => const CheckoutPage(),
      },
    );
  }
}
