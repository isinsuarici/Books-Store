import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/mainPage/body.dart';
import 'bodyForAllBooksScreenPage.dart';

class AllBooksScreenPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      //appBar: buildAppBar(),
      body: BodyForAllBooksScreenPage(),
    );
  }

/*AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
    );
  }*/
}