import 'package:cocktail_app/cocktail_instructions.dart';
import 'package:flutter/material.dart';
import 'cocktail.dart';

//Page for the list of previous cocktails
class PreviousCocktailsPage extends StatefulWidget {
  final List<Cocktail> previousCocktails;

  PreviousCocktailsPage(this.previousCocktails);

  @override
  _PreviousCocktailsPageState createState() => _PreviousCocktailsPageState();
}

class _PreviousCocktailsPageState extends State<PreviousCocktailsPage> {
  bool showNonAlcoholic = false;

  @override
  Widget build(BuildContext context) {
    List<Cocktail> displayedCocktails = showNonAlcoholic
        ? widget.previousCocktails
            .where((cocktail) => cocktail.alcoholic != "Alcoholic")
            .toList()
        : widget.previousCocktails;

    return Scaffold(
      appBar: AppBar(
        title: Text('Previous Cocktails'),
        actions: <Widget>[
          TextButton(
            child: showNonAlcoholic
                ? const Icon(Icons.local_bar, size: 30, color: Colors.white)
                : const Icon(Icons.no_drinks, size: 30, color: Colors.white),
            onPressed: () {
              setState(() {
                showNonAlcoholic = !showNonAlcoholic;
              });
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: displayedCocktails.length,
        itemBuilder: (context, index) {
          final cocktail = displayedCocktails[index];
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
