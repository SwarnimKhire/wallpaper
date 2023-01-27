import 'package:flutter/material.dart';

import 'package:wallpaperapp/onboardingpages/indexpage.dart';


void main()  {
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Indexpage(),
      },
      //home: SecondScreen(),
    );
  }
}
