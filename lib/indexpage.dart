import 'package:flutter/material.dart';
import 'package:wallpaperapp/secondscreen.dart';
import 'listcard2.dart';

class Indexpage extends StatefulWidget {
  const Indexpage({Key? key}) : super(key: key);

  @override
  State<Indexpage> createState() => _IndexpageState();
}

class _IndexpageState extends State<Indexpage> {
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
            splashColor: Colors.blueGrey,
            onTap: () {
              //print('working');
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) {
                      return const SecondScreen();
                    }),
                  ),
                );
              });
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
        ],
      ),
    );
  }
}
