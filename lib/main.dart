import 'package:flutter/material.dart';
import "introduction_screen.dart";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Cocktail Generator",
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    home: IntroScreen(),
  ));
}
