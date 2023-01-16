import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/sample_book.dart';
import '../../constants.dart';
import '../screens/details.dart';


class AllBooksListView extends StatelessWidget {

  final List<BookInfo> books;

  const AllBooksListView({
    Key? key, required this.books,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: books.length,
      itemBuilder: (context, index) {
        final book = books[index];
        return Books(book:book);
      }, separatorBuilder: (BuildContext context, int index) {
      return const SizedBox(width:16); },
    );

  }
}
class Books extends StatelessWidget {
  final BookInfo book;

  const Books({Key? key, required this.book,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage(
                      heroTag: book.bookImage,
                      bookName: book.bookName,
                      bookAuthor: book.bookAuthor)));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(children: [
                      Hero(
                          tag: book.bookImage,
                          child: Image(
                            image: AssetImage(book.bookImage),
                            fit: BoxFit.cover,
                            height: 120.0,
                          )),
                      SizedBox(width: 10.0),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(book.bookName,
                                style: const TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold)),
                            Text(book.bookAuthor,
                                style: const TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15.0,
                                    color: Colors.grey))
                          ])
                    ])),
                // yana icon koyabilirsiniz
              ],
            )));
  }
}