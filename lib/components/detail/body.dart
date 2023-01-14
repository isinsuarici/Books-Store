import 'package:books_store/components/detail/informations.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../models/Product.dart';
import 'color_and_size.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({
    Key? key, required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  // height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      const SizedBox(height: kDefaultPadding / 2),
                      Informations(product: product),
                      const SizedBox(height: kDefaultPadding / 2),
                      Description(product: product),
                      const SizedBox(height: kDefaultPadding / 2),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),

              ],
            ),
          )
        ],
      ),
    );
  }
}