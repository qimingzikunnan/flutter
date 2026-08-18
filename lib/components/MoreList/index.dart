import 'package:flutter/material.dart';

class MoreList extends StatefulWidget {
  MoreList({Key? key}) : super(key: key);

  @override
  _MoreListState createState() => _MoreListState();
}

class _MoreListState extends State<MoreList> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
    crossAxisSpacing: 10,mainAxisSpacing: 10,), 
    itemBuilder: (BuildContext context,int index){
      return Container(
        color: Colors.blue,
        child: Text("商品$index",style: TextStyle(fontSize: 20,color: Colors.white),),
      );
    });
  }
}