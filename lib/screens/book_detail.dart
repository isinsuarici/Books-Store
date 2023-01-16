
import 'package:books_store/components/detail/body.dart';
import 'package:books_store/constants.dart';
import 'package:flutter/material.dart';
import '../models/Product.dart';

class DetailsScreen extends StatelessWidget {


  const DetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: Colors.deepPurple,
      appBar: buildAppBar(context),
      body: BodyForDetailsPage(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.deepPurpleAccent,
      elevation: 0,

      actions: <Widget>[
        const SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}