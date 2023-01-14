import 'package:books_store/models/Product.dart';
import 'package:flutter/material.dart';


import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key, required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "Examine Book",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              const SizedBox(width: kDefaultPadding),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child:Center(
                    child: SizedBox(
                      height: 250,
                      child:
                        Image.asset(
                            product.image,
                            fit: BoxFit.contain
                        ),

                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}