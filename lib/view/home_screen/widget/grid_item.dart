import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vehup_app/model/grid_model.dart';

Widget buildGridItem(GridItemData item) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SVG Icon
          SvgPicture.asset(
            item.icon,
            width: 50,
            height: 50,
          ),
          const SizedBox(height: 10),
          // Count
          Text(
            item.count,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          // Title
          Text(
            item.title,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }