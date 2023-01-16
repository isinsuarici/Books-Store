import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/mainPage/body.dart';
import 'Bodyy2.dart';

class AllBooks2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      //appBar: buildAppBar(),
      body: Bodyy2(),
    );
  }

/*AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
    );
  }*/
}