import 'package:flutter/material.dart';

class DashboardSlider extends StatefulWidget {
  const DashboardSlider({Key? key}) : super(key: key);

  @override
  _DashboardSliderState createState() => _DashboardSliderState();
}

class _DashboardSliderState extends State<DashboardSlider> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: 400,
      width: _size.width,
      color: Colors.blue,
    );
  }
}
