import 'package:books_store/components/footer/footer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/mainPage/body.dart';

class BasicScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: buildAppBar(),
      body: Bodyy(),
      bottomNavigationBar:BottomNav(),
    );
  }

  /*AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
    );
  }*/
}
