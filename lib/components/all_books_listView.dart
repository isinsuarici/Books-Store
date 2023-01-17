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
                    bookCategory: book.bookCategory,
                      heroTag: book.bookImage,
                      bookName: book.bookName,
                      bookAuthor: book.bookAuthor,
                  bookPageNumber: book.bookPageNumber,
                  bookPublishedYear: book.bookPublishedYear,
                      price1: book.price1, price2: book.price2,
                    store1: book.store1,
                    store2: book.store2,
                    stock1:book.stock1,
                    stock2:book.stock2,
                      bookSummary: book.bookSummary,)));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: [
                  Hero(
                      tag: book.bookImage,
                      child: Image(
                        image: AssetImage(book.bookImage),
                        fit: BoxFit.fill,
                        width: 110,
                        height: 150,
                      )),
                  const SizedBox(width: 10.0),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 40, top: 10),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 0.0,
                              maxWidth: 200.0,
                              minHeight: 0.0,
                              maxHeight: 70.0,
                            ),
                            child:  Text(
                              book.bookName,
                                maxLines: 3,
                                style: const TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: Colors.black)),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              minWidth: 0.0,
                              maxWidth: 200.0,
                              minHeight: 0.0,
                              maxHeight: 70.0,
                            ),
                            child:  Text(
                                book.bookAuthor,
                                maxLines: 3,
                                style: const TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 18.0,
                                    color: Colors.grey)),
                          ),
                        ),
                      ])
                ]),
                // yana icon koyabilirsiniz
              ],
            )));
  }
}