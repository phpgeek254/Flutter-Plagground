import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {

  final List<String> _products = [];

  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  void _addNewProduct(String productName) {
    setState(() {
      _products.add(productName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addNewProduct),
        ),
        Products(_products)
      ],
    );
  }
}
