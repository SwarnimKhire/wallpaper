import 'package:flutter/material.dart';
import 'package:wallpaperapp/categoryscreens/AbstractPage.dart';

// ignore: unused_import
import 'package:wallpaperapp/indexpage.dart';
import 'package:wallpaperapp/secondscreen.dart';
import 'package:wallpaperapp/sorce.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      initialRoute: '/',
      routes: {
        '/':(context) => const SecondScreen(),

      },
      //home: SecondScreen(),
    );
  }
}

