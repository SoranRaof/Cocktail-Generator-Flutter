import 'package:cocktail_app/cocktail_instructions.dart';
import 'package:flutter/material.dart';
import 'cocktail.dart';

//Page for the list of previous cocktails
class PreviousCocktailsPage extends StatelessWidget {
  final List<Cocktail> previousCocktails;

  PreviousCocktailsPage(this.previousCocktails);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Previous Cocktails'),
      ),
      body: ListView.builder(
        itemCount: previousCocktails.length,
        itemBuilder: (context, index) {
          final cocktail = previousCocktails[index];
          return Row(
            children: [
              Expanded(
                child: ListTile(
                  leading: Image.network(cocktail.image),
                  title: Text(cocktail.drink),
                  subtitle: Text(cocktail.category),
                  trailing: Text(cocktail.alcoholic),
                ),
              ),
              ElevatedButton(
                child: Text('See Details'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CocktailInstructionsPage(cocktail),
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
