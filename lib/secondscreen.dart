import 'package:flutter/material.dart';
import 'package:wallpaperapp/categoryscreens/AbstractPage.dart';
import 'package:wallpaperapp/categoryscreens/animation.dart';

import 'package:wallpaperapp/indexpage.dart';

import 'package:wallpaperapp/scrollcategory.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

// ignore: camel_case_types
class _SecondScreenState extends State<SecondScreen> {
  // List category = [
  //   "Trending",
  //   "Popular",
  //   "Latest",
  //   "Nature",
  //   "Animations",
  //   "Abstract"
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextField(
                // obscureText: true,

                decoration: InputDecoration(
                  fillColor: Color(0xFFFBFBFB),
                  filled: true,
                  hintText: 'Find wallpaper',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      borderSide: BorderSide.none),
                  suffixIcon: Icon(
                    Icons.screen_search_desktop_rounded,
                    size: 40.0,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Text(
                      "Trending",
                      style: TextStyle(
                          color: Colors.blue[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    category("Latest"),
                    const SizedBox(
                      width: 30.0,
                    ),
                    category("Popular"),
                    const SizedBox(
                      width: 30.0,
                    ),
                    category("Nature"),
                    const SizedBox(
                      width: 30.0,
                    ),
                    category("Animation"),
                    const SizedBox(
                      width: 30.0,
                    ),
                  ],
                ),
              ),
              // Container(
              //   //alignment: Alignment.centerLeft,
              //   height: 100.0,
              //   width: 150.0,
              //   decoration: const BoxDecoration(
              //     borderRadius: BorderRadius.all(
              //       Radius.circular(20.0),
              //     ),
              //   ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          //alignment: Alignment.centerLeft,
                          height: 100.0,
                          width: 150.0,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          child: Image.network(a[index]),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                      ],
                    );
                  },
                  itemCount: a.length,
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Most Viewing",
                //RtextAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    letterSpacing: 2.0),
              ),
              const SizedBox(
                height: 20.0,
              ),
              scrollcard(
                  title1: "Animation",
                  subtitle: "The latest update wallpaper \n in here.",
                  link:
                      'https://athomeonthenorthshore.ca/wp-content/uploads/2017/06/Pictou_Law-of-Nature_-porch-800-x-450.jpg',
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const AnimationScreen();
                    }));
                  }),
              const SizedBox(
                height: 15.0,
              ),
              scrollcard(
                  title1: "Nature",
                  subtitle: "Best nature wallpapere here \n here ready to use",
                  link:
                      'https://www.edsys.in/wp-content/uploads/tanCEnAOXeOgWqI-800x450-noPad.jpg',
                  ontap: () {}),
              const SizedBox(
                height: 15.0,
              ),
              scrollcard(
                  title1: "Abstract",
                  subtitle: "To find abstract wallpaper \n tap here.",
                  link:
                      'https://thevirtualinstructor.com/blog/wp-content/uploads/2013/08/understanding-abstract-art.jpg',
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const AbstractPage();
                    })));
                  }),
              const SizedBox(
                height: 15.0,
              ),
              scrollcard(
                  title1: "Minimalist",
                  subtitle: "The minimalist wallpaper \n are here.",
                  link:
                      'https://assets-news.housing.com/news/wp-content/uploads/2022/02/18205828/Minimalist-interior-design-Tips-to-make-your-home-look-minimal.jpg'),
              Center(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const Indexpage();
                            },
                          ),
                        );
                      });
                    },
                    child: Icon(
                      Icons.home_filled,
                      color: Colors.teal[200],
                      size: 50.0,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  category(String categorname) {
    return Text(
      categorname,
      style: const TextStyle(
          color: Color(0xFFD3D3D3),
          fontWeight: FontWeight.bold,
          fontSize: 20.0),
    );
  }

  List a = [
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/07/11/15/43/pretty-woman-1509956_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/02/13/12/26/aurora-1197753_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/11/08/05/26/woman-1807533_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/11/28/10/03/autumn-219972_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/17/19/08/away-3024773_960_720.jpg",
  ];
}
