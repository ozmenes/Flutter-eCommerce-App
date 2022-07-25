import 'package:flutter/material.dart';

class WidgetCategories extends StatefulWidget {
  const WidgetCategories({Key? key}) : super(key: key);

  @override
  _WidgetCategoriesState createState() => _WidgetCategoriesState();
}

class _WidgetCategoriesState extends State<WidgetCategories> {
  final List<String> categories = <String>['1', '2', '3', '4', '5'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return AspectRatio(
            aspectRatio: 1,
            child: InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://i.morioh.com/2021/07/28/6b7ee0a2.webp"),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(categories[index].toString(),style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),),
                      ),
                      const SizedBox(height: 16,)
                    ],
                  ),
                ),
              ),
            ),
          );
        }
    );
  }
}
