part 'bookStores.dart';

class BookInfo {
  String bookId;
  String bookImage;
  String bookName;
  String bookAuthor;
  String bookSummary;
  String bookPublishedYear;
  String bookPageNumber;
  String bookCategory;
  String bookRank;
  List<BookStores> bookStores;
  String price1;
  String price2;
  String store1;
  String store2;
  String stock1;
  String stock2;

  BookInfo({this.bookId = '',
    this.bookImage = '',
    this.bookName = '',
    this.bookAuthor = '',
    this.bookSummary = '',
    this.bookPublishedYear = '',
    this.bookPageNumber = '',
    this.bookCategory = '',
    this.bookRank = '',
    this.bookStores = const[],
    this.price1='',
    this.price2='',
    this.store1='',
    this.store2='',
    this.stock1='',
    this.stock2='',
  });

  factory BookInfo.fromJson(Map<String, dynamic> json) {
    final bookStores = <BookStores>[];

    if (json['bookStores'] != null) {
      json['bookStores'].forEach((v) {
        bookStores.add(BookStores.fromJson(v));
      });
    }

    return BookInfo(
      bookId: json['bookId'] ?? '',
      bookImage: json['bookImage'] ?? '',
      bookName: json['bookName'] ?? '',
      bookAuthor: json['bookAuthor'] ?? '',
      bookSummary: json['bookSummary'] ?? '',
      bookPublishedYear: json['bookPublishedYear'] ?? '',
      bookPageNumber: json['bookPageNumber'] ?? '',
      bookCategory: json['bookCategory'] ?? '',
      bookRank: json['bookRank'] ?? '',
      bookStores: bookStores,
      price1:json['price1'] ?? '',
      price2:json['price2'] ?? '',
      store1:json['store1'] ?? '',
      store2:json['store2'] ?? '',
      stock1:json['stock1'] ?? '',
      stock2:json['stock2'] ?? '',
    );
  }
}