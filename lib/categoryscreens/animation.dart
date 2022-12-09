import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
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
                fontSize: 30.0
              ),
            ),
            const SizedBox(height: 20.0,),
            const Text(
              "The animated wallpaper is the most \nviewing in 2 weeks and best for your \nphone like beautiful screen.",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 15.0
              ),
            ),
            const SizedBox(height: 20.0,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:50.0),
              child: Row(
                children:  const [
                      Text("All", style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),),
              SizedBox(width: 30.0,),
              Text("Phone", style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),),
              SizedBox(width: 30.0,),
              Text("Desktop", style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),),
              SizedBox(width: 20.0,), ],),
            ),],
        ),
      ),
    );
  }
}
