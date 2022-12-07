import 'package:flutter/material.dart';
import 'package:wallpaperapp/listcard2.dart';
import 'package:wallpaperapp/scrollcategory.dart';
import 'package:wallpaperapp/secondscreen.dart';
import 'listcard2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SecondScreen(),
    );
  }
}

class Indexpage extends StatelessWidget {
  const Indexpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Color(0xFFa7bfef),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 20.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue[100],
            ),
          ),
          Center(
            child: Container(
              // ignore: sort_child_properties_last
              child: const Icon(
                Icons.insert_emoticon_sharp,
                color: Colors.white,
                size: 60.0,
              ),
              height: 70.0,
              width: 70.0,
              decoration: const BoxDecoration(
                color: Color(0xFFa7bfef),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.yellow],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
            ),
          ),
          // SizedBox(
          //   height: 20.0,
          // ),
          const Text(
            'Welcome!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          // SizedBox(
          //   height: 10.0,
          // ),
          const Text(
            '  We make cool wallpapers for you,\nwhich you can enjoy and use for free\n             Lets go to explorer.',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w700,
                fontSize: 15.0),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          const Text(
            'Lets see what you like',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 18.0),
          ),

          listcard2(),

          // listcards('Nature', 'Animations'),
          // listcards('Amoled', 'Illustration'),
          // listcards('Minimalist', 'Vintage'),
          // listcards('Art', 'Abstarct'),

          InkWell(
            onTap: () {
              //print('working');
            },
            child: Container(
              height: 50.0,
              width: 130.0,
              decoration: BoxDecoration(
                color: Colors.blue[700],
                // ignore: prefer_const_constructors
                borderRadius: BorderRadius.all(
                  const Radius.circular(10.0),
                ),
              ),
              child: const Center(
                child: Text('Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0)),
              ),
            ),
          ),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //       height: 70.0,
          //       width: 130.0,
          //       child: Center(
          //         child: Text('Animations',
          //             style: TextStyle(
          //                 color: Colors.black,
          //                 fontWeight: FontWeight.w700,
          //                 fontSize: 18.0)),
          //       ),
          //       decoration: BoxDecoration(
          //         color: Colors.grey[200],
          //         borderRadius: BorderRadius.all(
          //           Radius.circular(10.0),
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       width: 10.0,
          //     ),
          //     Container(
          //       height: 70.0,
          //       width: 130.0,
          //       child: Center(
          //         child: Text('Nature',
          //             style: TextStyle(
          //               color: Colors.black,
          //               fontWeight: FontWeight.w700,
          //               fontSize: 18.0,
          //             )),
          //       ),
          //       decoration: BoxDecoration(
          //         color: Colors.grey[200],
          //         borderRadius: BorderRadius.all(
          //           Radius.circular(10.0),
          //         ),
          //       ),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
