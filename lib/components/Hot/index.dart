import 'package:flutter/material.dart';

class Hot extends StatefulWidget {
  Hot({Key? key}) : super(key: key);

  @override
  _HotState createState() => _HotState();
}

class _HotState extends State<Hot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      alignment: Alignment.center,
      color: Colors.blue,
      child: Text("热门",style: TextStyle(fontSize: 20,color: Colors.white),),
    );
  }
}