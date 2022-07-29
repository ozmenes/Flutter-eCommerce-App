import 'package:ecommerce_flutter_app/pages/products/products_widget.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: Center(
            child: TextButton(onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => const ProductsWidget()));
            }, child: const Text('product Details'),)
          ),
        ),
      ),
    );
  }
}
