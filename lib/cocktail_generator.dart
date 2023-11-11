import 'package:flutter/material.dart';
import "previous_cocktails.dart";
import 'cocktail_api.dart';
import 'cocktail.dart';
import 'cocktail_instructions.dart';

//Page for the cocktail generator
class CocktailGenerator extends StatefulWidget {
  @override
  CocktailGeneratorState createState() => CocktailGeneratorState();
}

class CocktailGeneratorState extends State<CocktailGenerator> {
  final CocktailApi _cocktailApi = CocktailApi();
  Cocktail? _cocktail;
  List<Cocktail> _previousCocktails = [];

  void _fetchCocktail() async {
    try {
      final cocktail = await _cocktailApi.getCocktail();
      setState(() {
        //If the cocktail is already in the list, don't add it again
        _cocktail =
            _previousCocktails.contains(cocktail[0]) ? _cocktail : cocktail[0];
        _previousCocktails.add(cocktail[0]);
      });
    } catch (e) {
      throw Exception('Failed to bring your cocktail: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cocktail Generator'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PreviousCocktailsPage(_previousCocktails),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: _cocktail == null
            ? ElevatedButton(
                child: Text('Generate Cocktail!'),
                onPressed: _fetchCocktail,
              )
            : Column(
                children: <Widget>[
                  Image.network(_cocktail!.image),
                  Text(_cocktail!.drink),
                  Text(_cocktail!.category),
                  Text(_cocktail!.alcoholic),
                  ElevatedButton(
                    child: Text('Generate Another Cocktail!'),
                    onPressed: _fetchCocktail,
                  ),
                  SizedBox(height: 5),
                  ElevatedButton(
                    child: Text('See Details'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CocktailInstructionsPage(_cocktail!),
                        ),
                      );
                    },
                  ),
                ],
              ),
      ),
    );
  }
}
