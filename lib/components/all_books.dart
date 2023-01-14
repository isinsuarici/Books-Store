import 'package:flutter/cupertino.dart';

import '../constants.dart';

class AllBooks extends StatelessWidget {
  const AllBooks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          AllBooksCard(
            image: "assets/images/scifi.png",
            press: (){},
          ),
          AllBooksCard(
            image: "assets/images/scifi.png",
            press: (){},
          ),
          AllBooksCard(
            image: "assets/images/scifi.png",
            press: (){},
          ),
          AllBooksCard(
            image: "assets/images/scifi.png",
            press: (){},
          ),
          AllBooksCard(
            image: "assets/images/scifi.png",
            press: (){},
          ),
        ],
      ),
    );
  }
}

class AllBooksCard extends StatelessWidget {
  const AllBooksCard({
    Key? key, required this.image, required this.press,
  }) : super(key: key);
  final String image;
  final Function press;



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding/2,
          bottom: kDefaultPadding/2,
        ),
        width: size.width*0.4,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            )
        ),
      ),
    );
  }
}



