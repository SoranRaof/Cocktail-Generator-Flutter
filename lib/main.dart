import 'package:flutter/material.dart';
import 'cocktail_instructions.dart';

void main() {
  runApp(MaterialApp(
    title: "Cocktail Generator",
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    home: CocktailInstructions(),
  ));
}
