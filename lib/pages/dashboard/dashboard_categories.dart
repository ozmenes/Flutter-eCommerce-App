import 'package:flutter/material.dart';

class DashboardCategories extends StatefulWidget {
  const DashboardCategories({Key? key}) : super(key: key);

  @override
  _DashboardCategoriesState createState() => _DashboardCategoriesState();
}

class _DashboardCategoriesState extends State<DashboardCategories> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: 100,
      width: _size.width,
      color: Colors.yellow,
    );
  }
}
