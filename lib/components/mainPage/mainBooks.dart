import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/sample_book.dart';
import '../../screens/details.dart';

class AllBooks extends StatelessWidget {
  final BookInfo book;

  const AllBooks({Key? key, required this.book,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(bookCategory: book.bookCategory,
          heroTag: book.bookImage,
          bookName: book.bookName,
          bookAuthor: book.bookAuthor,
          bookPageNumber: book.bookPageNumber,
          bookPublishedYear: book.bookPublishedYear,
          bookSummary: book.bookSummary,
            price1: book.price1,
            price2: book.price2,
            store1: book.store1,
            store2: book.store2,
            stock1:book.stock1,
            stock2:book.stock2)));
      },
      //onTap: press(),
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding/2,
          bottom: kDefaultPadding/2,
        ),
        width: 200,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(book.bookImage),
            )
        ),
      ),
    );
  }
}

class AllBooksCard extends StatelessWidget {

  final List<BookInfo> books;

  const AllBooksCard({
    Key? key, /*required this.press,*/ required this.books,
  }) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        width: 300,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            final book = books[index];
            return AllBooks(book:book);
          }, separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width:16); },
        ),
    );

    /*Size size = MediaQuery.of(context).size;
    return GestureDetector(
      //onTap: press(),
      child: Container(
        margin: const EdgeInsets.only(
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
    );*/
  }
}



