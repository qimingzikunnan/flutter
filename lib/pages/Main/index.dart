import 'package:flutter/material.dart';
import 'package:hm_shop/pages/cart/index.dart';
import 'package:hm_shop/pages/category/index.dart';
import 'package:hm_shop/pages/home/index.dart';
import 'package:hm_shop/pages/mine/index.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  final List<Map<String,String>> _tapList =[
    {
      "icon": "lib/assets/ic_public_home_normal.png",
      "active_icon": "lib/assets/ic_public_home_active.png",
      "text":"首页"
    },
    {
      "icon": "lib/assets/ic_public_pro_normal.png",
      "active_icon": "lib/assets/ic_public_pro_active.png",
      "text":"分类"
    },
    {
      "icon": "lib/assets/ic_public_cart_normal.png",
      "active_icon": "lib/assets/ic_public_cart_active.png",
      "text":"购物车"
    },
    {
      "icon": "lib/assets/ic_public_my_normal.png",
      "active_icon": "lib/assets/ic_public_my_active.png",
      "text":"我的"
    },
  ];
  List<BottomNavigationBarItem> _getTapBarWidget()
  {
    return List.generate(_tapList.length, (int index)
    {
      return BottomNavigationBarItem(
        icon: Image.asset(_tapList[index]["icon"]!,width: 30,height: 30,),
        activeIcon: Image.asset(_tapList[index]["active_icon"]!,width: 30,height: 30,),
        label: _tapList[index]["text"]!,
      );
    });
  }

  int _curretIndex = 0;

  List<Widget> _getChildren()
  {
    return [HomeView(),CategoryView(),CartView(),MineView()];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: IndexedStack(
        index: _curretIndex,
        children: _getChildren(),
      )),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        onTap: (int index)
        {
          setState(() {
            _curretIndex = index;
          });
        },
        currentIndex: _curretIndex,
        items: _getTapBarWidget(),
      ),
    );
  }
}