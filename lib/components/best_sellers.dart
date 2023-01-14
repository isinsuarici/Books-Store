import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class BestSellers extends StatelessWidget {
  const BestSellers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          BestSellerBookCard(
            image: "assets/images/scifi.png",
            title: "Fall to Earth",
            store: "Adımlar Store",
            price: 30,
            press: (){},
          ),
          BestSellerBookCard(
            image: "assets/images/scifi.png",
            title: "Fall to Earth",
            store: "Adımlar Store",
            price: 30,
            press: (){},
          ),
          BestSellerBookCard(
            image: "assets/images/scifi.png",
            title: "Fall to Earth",
            store: "Adımlar Store",
            price: 30,
            press: (){},
          ),
        ],

      ),
    );
  }
}

class BestSellerBookCard extends StatelessWidget {
  const BestSellerBookCard({
    Key? key, required this.image, required this.title, required this.store, required this.price, required this.press,
  }) : super(key: key);

  final String image,title,store;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding/2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding/2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$store",
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}