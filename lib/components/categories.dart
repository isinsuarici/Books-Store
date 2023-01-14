import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:<Widget> [
          CategoriesCard(
            text: "Science Fiction",
            press: (){},
          ),
          CategoriesCard(
            text: "Drama",
            press: (){},
          ),
          CategoriesCard(
            text: "Comedy",
            press: (){},
          ),
        ],
      ),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    Key? key, required this.text, required this.press,
  }) : super(key: key);
  final String text;
  final Function press;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.deepPurpleAccent,
          gradient: LinearGradient( colors: [Colors.deepPurpleAccent,Colors.purpleAccent]),
        ),
        child: Center(child: Text(text,style: TextStyle(fontSize: 20))),
      ),

    );
  }
}


