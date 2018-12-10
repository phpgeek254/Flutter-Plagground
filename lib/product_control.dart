import 'package:flutter/material.dart';


class ProductControl extends StatelessWidget {
  final Function callBack;
  ProductControl(this.callBack);
  @override
    Widget build(BuildContext context) {
      return RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              callBack('Sweets');
            },
            child: Text('Add Product'),
          );
    }
}