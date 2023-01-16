

import 'package:books_store/screens/all_books.dart';
import 'package:books_store/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'components/mainPage/body.dart';
import 'constants.dart';
import 'screens/basic_screen.dart';

void main() => runApp(StaticApp());

class StaticApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(

      routes: {
        '/basic':(context)=> BasicScreen(),
      //  '/allBooks':()=> AllBooks2(),
      },
      initialRoute: '/',
      home: const OnboardingScreen(), );
  }
}
