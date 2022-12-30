// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  // int selectedIndex = 0;
  Key? selectedButton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              "Animations",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "The animated wallpaper is the most \nviewing in 2 weeks and best for your \nphone like beautiful screen.",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Row(children: [
                InkWell(
                  // ignore: sort_child_properties_last

                  // ignore: prefer_const_constructors
                  key: Key('All'),
                  onTap: () {
                    setState(() {
                      selectedButton = Key('All');
                    });
                  },
                  child: Text(
                    'All',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: selectedButton == Key('All')
                          ? Colors.black
                          : Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                InkWell(
                    key: Key('Mobile'),
                    onTap: () {
                      setState(() {
                        selectedButton = Key('Mobile');
                      });
                    },
                    child: Text(
                      'Mobile',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: selectedButton == Key('Mobile')
                            ? Colors.black
                            : Colors.grey,
                      ),
                    )),
                SizedBox(
                  width: 30.0,
                ),
                InkWell(
                  key: Key('Desktop'),
                  onTap: () {
                    setState(() {
                      selectedButton = Key('Desktop');
                    });
                  },
                  child: Text(
                    'Desktop',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: selectedButton == Key('Desktop')
                          ? Colors.black
                          : Colors.grey,
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
