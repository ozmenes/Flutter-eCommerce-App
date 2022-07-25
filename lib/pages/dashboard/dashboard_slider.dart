import 'dart:async';
import 'package:flutter/material.dart';

class DashboardSlider extends StatefulWidget {
  const DashboardSlider({Key? key}) : super(key: key);

  @override
  _DashboardSliderState createState() => _DashboardSliderState();
}

class _DashboardSliderState extends State<DashboardSlider> {

  @override
  Widget build(BuildContext context) {
    return SliderWidget();
  }
}

class SliderWidget extends StatelessWidget {
  final List<String> list = <String>['1', '2', '3', '4', '5'];
  final PageController pageController = PageController(initialPage: 0);

  SliderWidget({Key? key}) : super(key: key) {
    Timer.periodic(const Duration(seconds: 10), (timer) {
      int page = pageController.page!.ceil();
      if (list.length - 1 > page) {
        pageController.animateToPage(page + 1,
            duration: const Duration(seconds: 1), curve: Curves.ease);
      } else {
        pageController.animateToPage(0,
            duration: const Duration(seconds: 1), curve: Curves.ease);
      }
    });
  }

  List<Widget> buildContainers() {
    return list
        .map((e) => Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://i.morioh.com/2021/07/28/6b7ee0a2.webp"),
              fit: BoxFit.fill),
        ),
        child: Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.only(bottom: 40, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(" Name of Product  " + e,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                Text(" subtitle  " + e,
                    style:const TextStyle(color: Colors.white))
              ],
            ))))
        .toList();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child:
      PageView(controller: pageController, children: buildContainers()),
    );
  }
}
