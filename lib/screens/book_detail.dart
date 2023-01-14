
import 'package:books_store/components/detail/body.dart';
import 'package:books_store/constants.dart';
import 'package:flutter/material.dart';
import '../models/Product.dart';

class DetailsScreen extends StatelessWidget {

  final Product product;
  const DetailsScreen({
    Key? key, required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,

      actions: <Widget>[
        const SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}