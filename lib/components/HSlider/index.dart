import 'package:flutter/material.dart';

class HSlider extends StatefulWidget {
  HSlider({Key? key}) : super(key: key);
  
  @override
  _HSliderState createState() => _HSliderState();
}

class _HSliderState extends State<HSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text("轮播图",style: TextStyle(fontSize: 20,color: Colors.white),),
    );
  }
}