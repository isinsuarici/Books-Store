
import 'package:books_store/screens/allBooksScreenPage.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // Fixed
      backgroundColor: Colors.deepPurple, // <-- This works for fixed
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,

      items:  [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,size: 20,),
          label: "Home",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.collections_bookmark,size: 20,),
          label: "Books",
        ),

      ],
    );
  }
}