import 'package:vehup_app/utils/app_images.dart';

class GridItemData {
  final String icon;
  final String count;
  final String title;

  GridItemData({
    required this.icon,
    required this.count,
    required this.title,
  });
}

class GridModel {
  static final List<GridItemData> gridItems = [
    GridItemData(icon: ImagesPath.totalVehicle, count: '100', title: 'Total vehicle'),
    GridItemData(icon: ImagesPath.totalBookings, count: '50', title: 'Total bookings'),
    GridItemData(icon: ImagesPath.c2bConceppt, count: '25', title: ''),
    GridItemData(icon: ImagesPath.vecleSale, count: '35', title: ''),
  ];
}
