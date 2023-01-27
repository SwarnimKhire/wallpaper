import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:staggered_grid_view_flutter/rendering/sliver_staggered_grid.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'package:wallpaperapp/downloadpage.dart';
import 'package:wallpaperapp/onboardingpages/indexpage.dart';

class CommonScreen extends StatefulWidget {
  final String screenTitle;
  const CommonScreen({Key? key, required this.screenTitle}) : super(key: key);

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
              SizedBox(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: tabList.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: tabwidget(
                          title: tabList[index],
                          selectedButton: selectedButton,
                          ontap: () {
                            setState(() {
                              selectedButton = Key(tabList[index]);
                            });
                          },
                        ),
                      );
                    }),
                  ),
                ),
              ),
              wallpaperGrid(context, selectedButton, widget.screenTitle)
            ],
          ),
        ));
  }
}

List tabList = ['All', 'Mobile', 'Desktop'];

Widget tabwidget(
    {required String title,
    required Key selectedButton,
    void Function()? ontap}) {
  return InkWell(
      key: Key(title),
      onTap: ontap,
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 23.0,
          color: selectedButton == Key(title) ? Colors.black : Colors.grey,
        ),
      ));
}

downloadData() async {}

wallpaperGrid(BuildContext parentcontext, Key gridtype, String title) {
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
            return imagecard(parentcontext, index, title);
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
          return imagecard(parentcontext, index, title);
        },
      ),
    );
  } else if (gridtype == const Key('Desktop')) {
    return Expanded(
      child: StaggeredGridView.extentBuilder(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        staggeredTileBuilder: (index) => const StaggeredTile.extent(1, 100),
        itemCount: 20,
        itemBuilder: (context, index) {
          return imagecard(parentcontext, index, title);
        },
      ),
    );
  }
}

imagecard(BuildContext parentcontext, int index, String title) {
  return FutureBuilder(
      future: futueData(title, index),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          return InkWell(
            onTap: () {
              Navigator.push(parentcontext,
                  MaterialPageRoute(builder: ((context) {
                return ImagePreview(
                    title: title, bytes: snapshot.data as Uint8List);
              })));
            },
            child: Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Container(
                margin: const EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.memory(
                    snapshot.data as Uint8List,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        }
        return const CircularProgressIndicator();
      }));
}

futueData(title, index) async {
  var url = Uri.parse('https://source.unsplash.com/random/$title?q=$index');
  var res = await http.get(url);
  var bytes = res.bodyBytes;
  return bytes;
}
