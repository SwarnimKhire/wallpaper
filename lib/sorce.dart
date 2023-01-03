


import 'package:flutter/material.dart';

import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

sizewallpaper() {
  return Expanded(
    child: StaggeredGridView.extentBuilder(
      maxCrossAxisExtent:  150,
      itemBuilder: (context,index){
          return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://source.unsplash.com/abstract?q=${index * 2}',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
      },
      staggeredTileBuilder: (index)=>const StaggeredTile.extent(2, 150),
  ));
}
