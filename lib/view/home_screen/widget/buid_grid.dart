 import 'package:flutter/material.dart';
import 'package:vehup_app/model/grid_model.dart';
import 'package:vehup_app/view/home_screen/widget/grid_item.dart';

GridView buidGrid() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columns
          childAspectRatio: 0.9, // Adjust for proper layout
          crossAxisSpacing: 16, // Spacing between columns
          mainAxisSpacing: 16, // Spacing between rows
        ),
        itemCount: GridModel.gridItems.length,
        itemBuilder: (context, index) {
          return buildGridItem(GridModel.gridItems[index]);
        },
      );
  }