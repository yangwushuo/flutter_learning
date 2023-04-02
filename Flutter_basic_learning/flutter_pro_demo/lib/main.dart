import 'package:flutter/material.dart';
import 'package:flutter_pro_demo/pages/login.dart';
import 'package:flutter_pro_demo/pages/splash.dart';
import 'package:flutter_pro_demo/pages/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
      debugShowCheckedModeBanner: false, // 取消debug标记
      theme: ThemeData(
        fontFamily: "Poppins",
        primarySwatch: Colors.orange
      )
    );
  }
}
