import 'package:flutter/material.dart';
import 'package:flutter_notebook_chapter_34/ep1701_products_shop_app/views/product_main_page.dart';

void main() {
  runApp(const ProductsShopApp());
}

class ProductsShopApp extends StatelessWidget {
  const ProductsShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductMainPage(),
    );
  }
}
