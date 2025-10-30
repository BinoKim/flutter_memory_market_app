import 'package:flutter/material.dart';
import 'package:flutter_memory_market_app/product.dart';

class ItemAdd extends StatelessWidget {
  String title = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(/*isEdit ? "상품 수정" :*/ "상품 등록")),
      floatingActionButton: FloatingActionButton(
        child: Text('구매'),
        onPressed: () {
          Navigator.pop(
            context,
            Product(name: title, description: "description", price: 2000),
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Container(
              child: TextField(
                onChanged: (value) {
                  title = value;
                },
              ),
            ),
            TextField(),
            TextField(),
            Container(),
          ],
        ),
      ),
    );
  }

  Widget isEdit() {
    return Text("edit");
  }
}
