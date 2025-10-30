

import 'package:flutter/material.dart';
import 'package:flutter_memory_market_app/product.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key, required this.product, required this.index});
  final Product product;
  final int index;

  @override
  State<StatefulWidget> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("제품 상세"),
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              height: 400,
              color: Colors.grey.shade200,
            ),
          ),
        ],
      ),
    );
  }

}