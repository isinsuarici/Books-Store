import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../models/Product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key
  }) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
        Expanded(
          child: RichText(
            text: const TextSpan(
              style: TextStyle(color: kTextColor),
            ),
          ),
        ),
      ],
    );
  }
}
