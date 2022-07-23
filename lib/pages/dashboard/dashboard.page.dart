import 'package:flutter/material.dart';

import 'dashboard_categories.dart';
import 'dashboard_products.dart';
import 'dashboard_slider.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag_outlined))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: const [
              //Slider
              DashboardSlider(),
              // Categories
              DashboardCategories(),
              // products
              DashboardProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
