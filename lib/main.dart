import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_impl/pages/detail/binding/detail_binding.dart';
import 'package:getx_impl/pages/detail/view/detail.dart';
import 'package:getx_impl/pages/home/binding/home_binding.dart';
import 'package:getx_impl/pages/home/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(name: "/home", page: ()=>HomeScreen(), binding: HomeBinding()),
        GetPage(name: "/detail", page: ()=>DetailScreen(), binding: DetailBinding()),
      ],
      initialRoute: "/home",
    );
  }
}
