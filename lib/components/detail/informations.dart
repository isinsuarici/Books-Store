import 'package:books_store/models/Product.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class Informations extends StatelessWidget {
  const Informations({
    Key? key, required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
     child:Column(
       children: [
         Text(
           "TITLE: ${product.title}",
           style: const TextStyle(height: 1.5),
         ),
       ],
     ) ,
    );
  }
}