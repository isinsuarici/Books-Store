import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CategoriesCard(
            text: "Poetry",
            press: () {},
            image: "assets/category_pics/poetry.jpg",
          ),
          CategoriesCard(
            text: "Pets",
            press: () {},
            image: "assets/category_pics/pets.jpg",
          ),
          CategoriesCard(
            text: "Philosophy",
            press: () {},
            image: "assets/category_pics/philosophy.webp",
          ),
          CategoriesCard(
            text: "Travel",
            press: () {},
            image: "assets/category_pics/travel.jpg",
          ),
          CategoriesCard(
            text: "Nature",
            press: () {},
            image: "assets/category_pics/nature.jpg",
          ),
          CategoriesCard(
            text: "Historical\n  Fiction",
            press: () {},
            image: "assets/category_pics/historicalFiction.jfif",
          ),
          CategoriesCard(
            text: "Romance",
            press: () {},
            image: "assets/category_pics/romance.jpg",
          ),

          CategoriesCard(
            text: "Engineering",
            press: () {},
            image: "assets/category_pics/engineering.jfif",
          ),
          CategoriesCard(
            text: "Kids",
            press: () {},
            image: "assets/category_pics/kids.jpg",
          ),
          CategoriesCard(
            text: "Mystery \n Crime",
            press: () {},
            image: "assets/category_pics/MysteryCrime.jpg",
          ),
          CategoriesCard(
            text: "Home\nGarden",
            press: () {},
            image: "assets/category_pics/home.jpg",
          ),
          CategoriesCard(
            text: "Horror",
            press: () {},
            image: "assets/category_pics/horror.jfif",
          ),
        ],
      ),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    Key? key,
    required this.text,
    required this.press,
    required this.image,
  }) : super(key: key);
  final String text;
  final Function press;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: press(),
        child: Container(
          margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2,
          ),
          width: size.width * 0.4,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image), fit: BoxFit.cover, opacity: 0.6),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
              child: Text(text,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black))),
        )
        /*
      Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.4,
        height: 100,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/category_pics/scienceFiction.jpg"),
            fit: BoxFit.fill
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.deepPurpleAccent,
          gradient: LinearGradient(
              colors: [Colors.deepPurpleAccent, Colors.purpleAccent]),
        ),
        child: Center(child: Text(text, style: TextStyle(fontSize: 20))),
      ),
       */
        );
  }
}
