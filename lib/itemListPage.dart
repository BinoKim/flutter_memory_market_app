

import 'package:flutter/material.dart';

class Itemlistpage extends StatefulWidget {
  
  @override
  State<Itemlistpage> createState() => _ItemlistpageState();
}

class _ItemlistpageState extends State<Itemlistpage> {

  List<String> items = ["1","2","3"];

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
/*
class ListView.builder(
  itemCount: itmes.length,
  itemBuilder: (BuildContext context, int index) {
    return ;
  },
), */