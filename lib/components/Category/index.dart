import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Category extends StatefulWidget {
  Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context,int index)
      {
        return Container(
          width: 80,
          height: 100,
          alignment: Alignment.center,
          color: Colors.blue,
          child: Text("分类$index",style: TextStyle(fontSize: 20,color: Colors.white),),
        );
      }),
    );
  }
}