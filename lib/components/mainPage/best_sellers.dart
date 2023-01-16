import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/sample_book.dart';

import '../../constants.dart';

class BestSellers extends StatelessWidget {
  final BookInfo book;

  const BestSellers({Key? key, required this.book,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding/2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(book.bookImage),
          GestureDetector(
            //onTap: press(),
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding/2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0,10),
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
                          text: book.bookName.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: book.bookStores[0].bookStoreName,
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    book.bookStores[0].price,
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

class BestSellerBookCard extends StatelessWidget {

  final List<BookInfo> books;

  const BestSellerBookCard({
    Key? key, required this.books,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return BestSellers(book:book);
        }, separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(width:16); },
      ),
    );

  }
}


/*
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          BestSellerBookCard(
            image: "assets/book_pics/scifi.png",
            title: "Fall to Earth",
            store: "Adımlar Store",
            price: 30,
            press: (){},
          ),
        ],
      ),
    );
 */