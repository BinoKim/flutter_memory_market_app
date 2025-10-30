

import 'package:flutter/material.dart';

class ItemAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(/*isEdit ? "상품 수정" :*/ "상품 등록"),),
      body: Column(
        children: [
          Container(),
          Container(),
          Container(),
          Container(),

        ],
      ),
    );
  }

  Widget isEdit () {
    return Text("edit");
  }
}