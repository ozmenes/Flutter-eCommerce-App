import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DashboardSlider extends StatefulWidget {
  const DashboardSlider({Key? key}) : super(key: key);

  @override
  _DashboardSliderState createState() => _DashboardSliderState();
}

class _DashboardSliderState extends State<DashboardSlider> {
  @override
  Widget build(BuildContext context) {
    //final _size = MediaQuery.of(context).size;
    return CarouselSlider(
      options: CarouselOptions(height: 320.0,),
      items: [1,2,3,4,5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width*2,
                margin: const EdgeInsets.symmetric(horizontal: 1.0),
                decoration: const BoxDecoration(
                    color: Colors.greenAccent
                ),
                child: Text('text $i', style: const TextStyle(fontSize: 16.0),)
            );
          },
        );
      }).toList(),
    );
    // return Container(
    //   height: 400,
    //   width: _size.width,
    //   color: Colors.blue,
    // );
  }
}
