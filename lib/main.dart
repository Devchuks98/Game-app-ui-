import 'package:flutter/material.dart';
import 'Screens/OnBoardingPage.dart';

void main() => runApp(const MyGame());

class MyGame extends StatelessWidget {
  const MyGame({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage(),
      title: 'Game App UI',
    );
  }
}
