import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/rendering/sliver_staggered_grid.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:wallpaperapp/onboardingpages/indexpage.dart';

class CommonScreen extends StatefulWidget {
  final String screenTitle;
  const CommonScreen({Key? key,required this.screenTitle}) : super(key: key);

  @override
  State<CommonScreen> createState() => _CommonScreenState();
}

class _CommonScreenState extends State<CommonScreen> {
    Key selectedButton = const Key('All');

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
              Row(
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    widget.screenTitle,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                  ),
                  const SizedBox(
                    width: 130,
                  ),
                  TextButton(
                    onPressed: (() {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Indexpage()));
                      });
                    }),
                    child: const Icon(
                      Icons.home_outlined,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Abstract wallpapers are trending \nin forever and best for your \nphone like beautiful screen.",
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
                    key: const Key('All'),
                    onTap: () {
                      setState(() {
                        selectedButton = const Key('All');
                      });
                    },
                    child: Text(
                      'All',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23.0,
                        color: selectedButton == const Key('All')
                            ? Colors.black
                            : Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25.0,
                  ),
                  InkWell(
                      key: const Key('Mobile'),
                      onTap: () {
                        setState(() {
                          selectedButton = const Key('Mobile');
                        });
                      },
                      child: Text(
                        'Mobile',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: selectedButton == const Key('Mobile')
                              ? Colors.black
                              : Colors.grey,
                        ),
                      )),
                  const SizedBox(
                    width: 25.0,
                  ),
                  InkWell(
                    key: const Key('Desktop'),
                    onTap: () {
                      setState(() {
                        selectedButton = const Key('Desktop');
                      });
                    },
                    child: Text(
                      'Desktop',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23.0,
                        color: selectedButton == const Key('Desktop')
                            ? Colors.black
                            : Colors.grey,
                      ),
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              wallpaperGrid(selectedButton, widget.screenTitle)
            ],
          ),
        ));
  }
} 
wallpaperGrid(Key gridtype, String title) {

  if (gridtype == const Key('All')) {
    return Expanded(
      child: StaggeredGridView.builder(
          gridDelegate: SliverStaggeredGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
              staggeredTileCount: 10),
          itemCount: 10,
          itemBuilder: (context, index) {
            return imagecard(index, title);
          }),
    );
  } else if (gridtype == const Key('Mobile')) {
    return Expanded(
      child: StaggeredGridView.extentBuilder(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        staggeredTileBuilder: (index) => const StaggeredTile.extent(1, 250),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.zero,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Container(
              margin: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://source.unsplash.com/random/$title?q=${index * 2.5}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }else if(gridtype == const Key('Desktop')){
    return Expanded(
      child: StaggeredGridView.extentBuilder(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        staggeredTileBuilder: (index) => const StaggeredTile.extent(1, 100),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.zero,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Container(
              margin: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://source.unsplash.com/random/$title?q=${index * 3.2}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

imagecard(int index, String title) {
  return Card(
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    child: Container(
      margin: const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          'https://source.unsplash.com/random/$title?q=${index * 2}',
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
    
