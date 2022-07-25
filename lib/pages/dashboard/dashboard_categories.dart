import 'package:ecommerce_flutter_app/pages/dashboard/widget_categories.dart';
import 'package:flutter/material.dart';

class DashboardCategories extends StatefulWidget {
  const DashboardCategories({Key? key}) : super(key: key);

  @override
  _DashboardCategoriesState createState() => _DashboardCategoriesState();
}

class _DashboardCategoriesState extends State<DashboardCategories> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "All Categories",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 90,child: WidgetCategories())
        ],
      ),
    );
  }
}
