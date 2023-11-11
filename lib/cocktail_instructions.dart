import 'cocktail.dart';
import 'package:flutter/material.dart';

//Instructions page for the selected cocktail
class CocktailInstructionsPage extends StatelessWidget {
  final Cocktail cocktail;

  CocktailInstructionsPage(this.cocktail);

  @override
  Widget build(BuildContext context) {
    List<String?> ingredients = [
      cocktail.ingredient1,
      cocktail.ingredient2,
      cocktail.ingredient3,
      cocktail.ingredient4,
      cocktail.ingredient5,
      cocktail.ingredient6,
      cocktail.ingredient7,
      cocktail.ingredient8,
      cocktail.ingredient9,
      cocktail.ingredient10,
      cocktail.ingredient11,
      cocktail.ingredient12,
      cocktail.ingredient13,
      cocktail.ingredient14,
      cocktail.ingredient15,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(cocktail.drink),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Image.network(cocktail.image),
                Text(cocktail.drink),
                Text(cocktail.category),
                Text(cocktail.alcoholic),
                Text(cocktail.glass),
                for (var ingredient in ingredients)
                  if (ingredient != null) Text(ingredient),
                Text(cocktail.instructions),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
