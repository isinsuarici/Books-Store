import 'package:flutter/material.dart';
import '../api/mock_bookStore_service.dart';
import '../components/all_books_listView.dart';
import '../components/components.dart';
import '../models/sample_book.dart';

class AllBooksScreenData extends StatelessWidget {

  final exploreService = MockBooksService();

  AllBooksScreenData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(

      future: exploreService.getBookInformations(),
      builder: (context, AsyncSnapshot<List<BookInfo>> snapshot){

        if(snapshot.connectionState == ConnectionState.done) {
          return AllBooksListView(books: snapshot.data ?? []);

        } else{

          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}