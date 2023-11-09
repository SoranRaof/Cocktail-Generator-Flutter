import 'cocktail.dart';
import 'package:flutter/material.dart';

//Instructions page for the selected cocktail
class CocktailInstructionsPage extends StatelessWidget {
  final Cocktail cocktail;

  CocktailInstructionsPage(this.cocktail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cocktail.drink),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Image.network(cocktail.image),
              Text(cocktail.drink),
              Text(cocktail.category),
              Text(cocktail.alcoholic),
              Text(cocktail.glass),
              if (cocktail.ingredient1 != null) Text(cocktail.ingredient1!),
              if (cocktail.ingredient2 != null) Text(cocktail.ingredient2!),
              if (cocktail.ingredient3 != null) Text(cocktail.ingredient3!),
              if (cocktail.ingredient4 != null) Text(cocktail.ingredient4!),
              if (cocktail.ingredient5 != null) Text(cocktail.ingredient5!),
              if (cocktail.ingredient6 != null) Text(cocktail.ingredient6!),
              if (cocktail.ingredient7 != null) Text(cocktail.ingredient7!),
              if (cocktail.ingredient8 != null) Text(cocktail.ingredient8!),
              if (cocktail.ingredient9 != null) Text(cocktail.ingredient9!),
              if (cocktail.ingredient10 != null) Text(cocktail.ingredient10!),
              if (cocktail.ingredient11 != null) Text(cocktail.ingredient11!),
              if (cocktail.ingredient12 != null) Text(cocktail.ingredient12!),
              if (cocktail.ingredient13 != null) Text(cocktail.ingredient13!),
              if (cocktail.ingredient14 != null) Text(cocktail.ingredient14!),
              if (cocktail.ingredient15 != null) Text(cocktail.ingredient15!),
              Text(cocktail.instructions),
            ],
          ),
        ),
      ),
    );
  }
}
