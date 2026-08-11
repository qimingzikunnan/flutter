import 'package:flutter/material.dart';
import 'package:hm_shop/pages/Main/index.dart';
import 'package:hm_shop/pages/login/index.dart';
//返回App的根路由Widget
Widget getRootWidget() {
  return  MaterialApp(
    initialRoute: "/",
    routes: 
      getRootRoutes(),
  );
}
//返回App的根路由
Map<String, Widget Function(BuildContext)> getRootRoutes() {
  return {
    "/": (context)=>MainPage(),/// 根路由
    "/login": (context)=>LoginPage(),//登录路由
  };
}