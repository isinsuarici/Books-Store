

import 'package:books_store/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';
import 'constants.dart';
import 'screens/basic_screen.dart';

void main() => runApp(StaticApp());

class StaticApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(

      routes: {
        '/basic':(context)=> BasicScreen(),
      },
      initialRoute: '/',
      home: const OnboardingScreen(), );
  }
}
