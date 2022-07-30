import 'package:ecommerce_flutter_app/pages/cart/cart_page.dart';
import 'package:flutter/material.dart';

class ProductsWidget extends StatefulWidget {
  const ProductsWidget({Key? key}) : super(key: key);

  @override
  _ProductsWidgetState createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
                height: 300,
                child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://i.morioh.com/2021/07/28/6b7ee0a2.webp"),
                )),
            const Text("Quantity: 1"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => const CartPage()));
              },
              child: const Text('Add to Cart'),
            ),
            const Text("Product details"),
          ],
        ),
      ),
    ));
  }
}
