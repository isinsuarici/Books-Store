part of 'sample_book.dart';

class BookStores {
  String bookStoreName;
  String stocks;
  String price;

  BookStores({
    required this.bookStoreName,
    required this.stocks,
    required this.price
  });

  factory BookStores.fromJson(Map<String, dynamic> json) {
    return BookStores(
        bookStoreName : json['bookStoreName']?? '',
        stocks : json['stocks']?? '',
        price : json['price']?? '',
    );
  }
}
