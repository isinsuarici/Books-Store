import 'package:flutter/cupertino.dart';
import '../../constants.dart';
import '../../models/sample_book.dart';

class BestSellers extends StatelessWidget {
  final BookInfo book;

  const BestSellers({Key? key, required this.book,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
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
              image:  AssetImage(book.bookImage)
              //   AssetImage(book.bookImage),
            ),
        ),
      ),

    );
  }
  bool isRankedBook(BookInfo bookInfo){
    if(bookInfo.bookRank=="5"){
      return true;
    }
    else{
      return false;
    }
  }
}

class BestSellerBookCard extends StatelessWidget {

  final List<BookInfo> books;

  const BestSellerBookCard({
    Key? key, /*required this.press,*/ required this.books,
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
          if(book.bookRank=="5") {
            return BestSellers(book: book);
          }else {
            return Container(width: 0.0, height: 0.0);
          }
        }, separatorBuilder: (BuildContext context, int index) {
    final book = books[index];
    if(book.bookRank=="5") {
        return const SizedBox(width:16); }
    else return Container(width: 0,height: 0,);},
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



