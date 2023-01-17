import 'package:books_store/components/mainPage/best_sellers.dart';
import 'package:books_store/components/mainPage/categories.dart';
import 'package:books_store/components/mainPage/header-with_searchbox.dart';
import 'package:books_store/components/mainPage/title.dart';
import 'package:books_store/components/mainPage/titleWithMoreButton.dart';
import 'package:books_store/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../screens/allBooks_screen.dart';
import '../../screens/bestSellers_screen.dart';
import 'mainBooks.dart';

class Bodyy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          const TitleElement(title: "Best Sellers"),
           BestSellersScreen(),
          const TitleElement(title: "Categories"),
           const Categories(),
          const SizedBox(height: kDefaultPadding),
          TitleWithMoreButtons(title: "All Books", press: (){}),
          AllBooksScreen(),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
