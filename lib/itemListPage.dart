import 'package:flutter/material.dart';
import 'package:flutter_memory_market_app/itemAdd.dart';
import 'package:flutter_memory_market_app/product.dart';
import 'package:flutter_memory_market_app/ProductDetailPage.dart';

import 'package:intl/intl.dart';
import 'package:intl/number_symbols_data.dart';

class Itemlistpage extends StatefulWidget {
  @override
  State<Itemlistpage> createState() => _ItemlistpageState();
}

class _ItemlistpageState extends State<Itemlistpage> {
  List<Product> items = [
    Product(name: "memory", description: "description", price: 12000000),
    Product(name: "Yours", description: "description", price: 223232300000),
  ];

  void _addItem() {
    setState(() {
      ItemAdd();
     //ItemList();
      //items.add();
    });
  }

  final NumberFormat wonFmt = NumberFormat("#,###");
  String formatwon(int v) => "${wonFmt.format(v)} 원";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MEMORY MARKET",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: items.isEmpty
          ? EmptyPage()
          : ListView.separated(
              itemCount: items.length,
              separatorBuilder: (context, index) => const Divider(height: 1),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: 72,
                      height: 72,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  title: Text(items[index].name),
                  subtitle: Text(items[index].description),
                  trailing: Text(formatwon(items[index].price)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailPage(
                          product: items[index],
                          index: index,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: //_addItem,
        
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemAdd()
                      ),
                    );
                  },

        child: const Icon(Icons.add),
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
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  //final NumberFormat numberFormat = NumberFormat("###");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Row(
          children: [
            Container(child: Text("image"), alignment: Alignment.centerLeft),
            Column(
              children: [
                Text("items name", textAlign: TextAlign.left),
                Text("price", textAlign: TextAlign.right),
              ],
            ),
          ],
        ),
      
    );
  }
}
