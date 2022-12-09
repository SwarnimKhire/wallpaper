import 'package:flutter/material.dart';
import 'package:wallpaperapp/categoryscreens/animation.dart';




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
        '/':(context) => const AnimationScreen(),

      },
      //home: SecondScreen(),
    );
  }
}

