import 'package:flutter/material.dart';

class DashboardProducts extends StatefulWidget {
  const DashboardProducts({Key? key}) : super(key: key);

  @override
  _DashboardProductsState createState() => _DashboardProductsState();
}

class _DashboardProductsState extends State<DashboardProducts> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: 600,
      width: _size.width,
      color: Colors.brown,
    );
  }
}
