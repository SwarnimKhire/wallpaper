

import 'package:flutter/material.dart';

import 'package:wallpaperapp/categoryscreens/animation.dart';


import 'package:wallpaperapp/onboardingpages/scrollcategory.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

// ignore: camel_case_types
class _SecondScreenState extends State<SecondScreen> {
  List category = [
    "Trending",
    "Popular",
    "Latest",
    "Nature",
    "Animations",
    "Abstract"
  ];
  String selected = "Trending";
  
  List<Map> mostViewed = [
    {
      "title": "Animations",
      "subtext": "The latest update wallpaper  in here.",
      "link":
          "https://athomeonthenorthshore.ca/wp-content/uploads/2017/06/Pictou_Law-of-Nature_-porch-800-x-450.jpg",
      
      
    },
    {
      "title": "Nature",
      "subtext": "Best nature wallpapere here ready to use.",
      "link":
          "https://www.edsys.in/wp-content/uploads/tanCEnAOXeOgWqI-800x450-noPad.jpg"
    },
    {
      "title": "Abstract",
      "subtext": "To find abstract wallpaper tap here.",
      "link":
          "https://thevirtualinstructor.com/blog/wp-content/uploads/2013/08/understanding-abstract-art.jpg"
    },
    {
      "title": "Minimalist",
      "subtext": "The minimalist wallpaper are here.",
      "link":
          "https://assets-news.housing.com/news/wp-content/uploads/2022/02/18205828/Minimalist-interior-design-Tips-to-make-your-home-look-minimal.jpg",
    },
  ];

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
              TextField(
                decoration: InputDecoration(
                  fillColor: const Color(0xFFFBFBFB),
                  filled: true,
                  hintText: 'Find wallpaper',
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      borderSide: BorderSide.none),
                  suffixIcon: Container(
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.circular(4)),
                    child: const Icon(
                      Icons.search,
                      size: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              SizedBox(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: index != category.length - 1
                          ? const EdgeInsets.only(right: 30.0)
                          : EdgeInsets.zero,
                      child: categoryNAme(
                          categoryname: category[index],
                          selected: selected == category[index],
                          ontap: () {
                            setState(() {
                              selected = category[index];
                            });
                          }),
                    );
                  },
                  itemCount: category.length,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: SizedBox(
                  height: 130,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: carouselCard(url: name[index]),
                      );
                    },
                    itemCount: name.length,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "Most Viewing",
                    //RtextAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 16.0,
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: mostViewed.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: scrollcard(
                            title: mostViewed[index]["title"],
                            subtitle: mostViewed[index]["subtext"],
                            link: mostViewed[index]["link"]),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget carouselCard({required String url}) {
    return Container(
      height: 150.0,
      width: 200.0,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(6.0),
          ),
          image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)),
      //
    );
  }

  Widget categoryNAme(
      {required String categoryname,
      required bool selected,
      void Function()? ontap}) {
    return InkWell(
      onTap: ontap,
      child: Text(
        categoryname,
        style: TextStyle(
            color: selected ? Colors.blue : Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 20.0),
      ),
    );
  }

  List name = [
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
