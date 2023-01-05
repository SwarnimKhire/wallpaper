import 'package:flutter/material.dart';


import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class Testgridview extends StatefulWidget {
  const Testgridview({Key? key}) : super(key: key);

  @override
  State<Testgridview> createState() => _TestgridviewState();
}

class _TestgridviewState extends State<Testgridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text(
          "MOBILE",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 15.0),
        //     child: GestureDetector(
        //       onTap: () {
        //         Navigator.pop(context);
        //       },
        //       child: const Icon(
        //         Icons.arrow_back_rounded,
        //         color: Colors.black,
        //       ),
        //     ),
        //   )
        // ],
      ),
      body: SizedBox(
        height: 800,
        child: StaggeredGridView.extentBuilder(
          maxCrossAxisExtent: 150,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          staggeredTileBuilder: (index) => const StaggeredTile.extent(1, 250),
          itemCount: 20,
          itemBuilder: (context, index) {
            return 
              
             Card(
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://source.unsplash.com/random?q=${index * 2}',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              
            );
          },
        ),
      ),
    );
  }
}

// sizewallpaper(int index) {
  
// }
