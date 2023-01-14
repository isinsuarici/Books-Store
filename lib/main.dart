
import 'package:books_store/screens/helloPage.dart';
import 'package:books_store/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'screens/basic_screen.dart';

void main() => runApp(StaticApp());

class StaticApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes: {
        '/hello':(context)=>const Hello(),
      },
      initialRoute: '/',
      home: const OnboardingScreen(),
    );
  }
}
