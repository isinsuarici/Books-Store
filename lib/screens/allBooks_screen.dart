import 'package:books_store/components/mainPage/mainBooks.dart';
import 'package:flutter/material.dart';
import '../api/mock_bookStore_service.dart';
import '../components/components.dart';
import '../models/sample_book.dart';

class AllBooksScreen extends StatelessWidget {

  final exploreService = MockBooksService();

  AllBooksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(

      future: exploreService.getBookInformations(),
      builder: (context, AsyncSnapshot<List<BookInfo>> snapshot){

        if(snapshot.connectionState == ConnectionState.done) {
          return AllBooksCard(books: snapshot.data ?? []);

        } else{

          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}