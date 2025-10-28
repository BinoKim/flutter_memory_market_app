

import 'package:flutter/material.dart';

class Itemlistpage extends StatefulWidget {
  
  @override
  State<Itemlistpage> createState() => _ItemlistpageState();
}

class _ItemlistpageState extends State<Itemlistpage> {

  List<String> items = [];

  void _addItem() {
    setState(() {
      _itemList();
      //items.add("New Item");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MEMORY MARKET",
          style: TextStyle(
            fontSize: 25, 
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: items.isEmpty
      ? EmptyPage()
      : ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: const Icon(
          Icons.add,
          
        ),
      ), 
    ); 
  }
}

class EmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "판매할 추억을 등록해 주세요!",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _itemList extends StatelessWidget {

  //final NumberFormat numberFormat = NumberFormat("###");

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Text("image"),
          alignment: Alignment.centerLeft,
        ),
        Column(
          children: [
            Text(
              "items name",
              textAlign: TextAlign.left,
            ),
            Text(
              "price",
              textAlign: TextAlign.right,
            ),
          ],
        ),
      ],
    );
  }

}