// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/rendering/sliver_staggered_grid.dart';
import 'package:staggered_grid_view_flutter/staggered_grid_view_flutter.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
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
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Row(children: [
                  InkWell(
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
                        fontSize: 23.0,
                        color: selectedButton == Key('All')
                            ? Colors.black
                            : Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25.0,
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
                          fontSize: 23.0,
                          color: selectedButton == Key('Mobile')
                              ? Colors.black
                              : Colors.grey,
                        ),
                      )),
                  SizedBox(
                    width: 25.0,
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
                        fontSize: 23.0,
                        color: selectedButton == Key('Desktop')
                            ? Colors.black
                            : Colors.grey,
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: StaggeredGridView.builder(
                  gridDelegate: SliverStaggeredGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                     mainAxisSpacing: 10,
                     crossAxisSpacing: 10,
                     staggeredTileBuilder: (index)=>const StaggeredTile.fit(1),
                     staggeredTileCount: 10),
                     itemCount: 10,
                     itemBuilder: (context,index){return imagecard(index);}),
              ),
            ],
          ),
        ));
  }

  imagecard(int index) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        margin: EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://source.unsplash.com/random?sig=$index',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
