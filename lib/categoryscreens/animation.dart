import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  Color? color1;
  bool selected = true;

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
              child: Row(
                children: [
                  wallpapertype(typename: "All", color1: Colors.black),
                  const SizedBox(
                    width: 30.0,
                  ),
                  wallpapertype(typename: "Phone", color1: Colors.grey),
                  const SizedBox(
                    width: 30.0,
                  ),
                  wallpapertype(typename: "Desktop", color1: Colors.grey),
                  const SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  wallpapertype({
    required String typename,
    required Color color1,
  }) {
    return InkWell(
      splashColor: Colors.red,
      onTap: () {
        setState(() {
          selected = !selected;
          print("working");
        });
      },
      child: Text(
        typename,
        style: TextStyle(
            color: selected ? Colors.grey : Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.0),
      ),
    );
  }
}
