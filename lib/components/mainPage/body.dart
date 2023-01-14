import 'package:books_store/components/mainPage/best_sellers.dart';
import 'package:books_store/components/mainPage/categories.dart';
import 'package:books_store/components/mainPage/header-with_searchbox.dart';
import 'package:books_store/components/mainPage/title_with_more_button.dart';
import 'package:books_store/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mainBooks.dart';


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
          TitleWithMoreButton(title: "Categories", press: (){}),
          Categories(),
          SizedBox(height: kDefaultPadding),
          TitleWithMoreButton(title: "All Books", press: (){}),
          AllBooks(),
          SizedBox(height: kDefaultPadding),


        ],
      ),
    );
  }
}


