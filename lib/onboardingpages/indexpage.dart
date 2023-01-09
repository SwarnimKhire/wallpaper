import 'package:flutter/material.dart';
import 'package:wallpaperapp/onboardingpages/secondscreen.dart';
import 'listcard2.dart';

class Indexpage extends StatefulWidget {
  const Indexpage({Key? key}) : super(key: key);

  @override
  State<Indexpage> createState() => _IndexpageState();
}

class _IndexpageState extends State<Indexpage> {
  final boxShadow = [BoxShadow(blurRadius: 14, spreadRadius: 1,color: Colors.grey[300]!)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 150,
            child: Stack(
              alignment: Alignment.center,
              children: [
                 Positioned(
                 bottom: 130,
                  right: -55,
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.pink[50],
                        borderRadius: BorderRadius.circular(20),boxShadow:boxShadow),
                    transform: Matrix4.rotationZ(0.50),
                  ),
                               ),

                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.yellow[50],
                        borderRadius: BorderRadius.circular(20),boxShadow:boxShadow ),
                    transform: Matrix4.rotationZ(-0.45),
                    
                  ),
                ),
                
                Positioned(
                  top: -10,
                  left: -40,
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(20), boxShadow: boxShadow),
                    transform: Matrix4.rotationZ(-0.10),
                  ),
                ),
                 
                Positioned(
                  top: 10,
                  right: -40,
                  child: Container(
                    transformAlignment: Alignment.topRight,
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.amber[100],
                        borderRadius: BorderRadius.circular(20),boxShadow:boxShadow),
                    transform: Matrix4.rotationZ(
                      0.32),
                  ),
                ),

                Positioned(
                  bottom: 0,

                  child: Container(
                    // ignore: sort_child_properties_last
                    child: const Icon(
                                Icons.insert_emoticon_sharp,
                                color: Colors.white,
                                size: 40.0,
                    ),
                    height: 60.0,
                    width: 60.0,
                    decoration: const BoxDecoration(
                                color: Color(0xFFa7bfef),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                gradient: LinearGradient(
                                    colors: [Color(0xFFBBDEFB), Color(0xFFF8BBD0)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                    ),
                  ),
                ),
               
              ],
            ),
          ),
          
          
          const Text(
            'Welcome!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
            ),
          ),
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
