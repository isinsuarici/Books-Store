import 'package:books_store/components/title_with_more_button.dart';
import 'package:books_store/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'all_books.dart';
import 'best_sellers.dart';
import 'header-with_searchbox.dart';

class Bodyy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(title: "Best Sellers",press: (){}),
          BestSellers(),
          TitleWithMoreButton(title: "All Books", press: (){}),
          AllBooks(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}



