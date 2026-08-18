import 'package:flutter/material.dart';
import 'package:hm_shop/components/Suggestion/index.dart';
import 'package:hm_shop/components/MoreList/index.dart';
import 'package:hm_shop/components/HSlider/index.dart';
import 'package:hm_shop/components/Hot/index.dart';
import 'package:hm_shop/components/Category/index.dart';
class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> _getScrollChildren()//获取滚动组件
  {
    return [
      SliverToBoxAdapter(child: HSlider()),
      SliverToBoxAdapter(child: SizedBox(height: 10,),),
      SliverToBoxAdapter(child: Category()),
      SliverToBoxAdapter(child: SizedBox(height: 10,),),
      SliverToBoxAdapter(child: Suggestion()),
      SliverToBoxAdapter(child: SizedBox(height: 10,),),
      SliverToBoxAdapter(child: 
      Padding(padding: EdgeInsets.symmetric(horizontal: 10),
      child: Flex(direction: Axis.horizontal,
      children: [
        Expanded(child: Hot()),
        SizedBox(width: 10,),
        Expanded(child: Hot()),],)),
        ), 
      SliverToBoxAdapter(child: SizedBox(height: 10,),),
        MoreList()
      ];
  }
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: _getScrollChildren(),
    ); 
  }
}