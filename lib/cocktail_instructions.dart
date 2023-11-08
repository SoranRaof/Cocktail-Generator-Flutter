import 'package:flutter/material.dart';
import 'cocktail_api.dart';
import 'cocktail.dart';

class CocktailInstructions extends StatefulWidget {
  @override
  CocktailInstructionsState createState() => CocktailInstructionsState();
}

class CocktailInstructionsState extends State<CocktailInstructions> {
  final CocktailApi _cocktailApi = CocktailApi();
  List<Cocktail> _cocktail = [];

  void _fetchCocktail() async {
    try {
      final cocktail = await _cocktailApi.getCocktail();
      setState(() {
        _cocktail = cocktail;
      });
    } catch (e) {
      throw Exception('Failed to bring your cocktail: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchCocktail();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cocktail Generator'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _cocktail.length,
          itemBuilder: (context, index) {
            final cocktail = _cocktail[index];
            return ListTile(
              leading: Image.network(cocktail.image),
              title: Text(cocktail.drink),
              subtitle: Text(cocktail.category),
              trailing: Text(cocktail.alcoholic),
              onTap: () {},
            );
          },
        ),
      ),
    );
  }
}
