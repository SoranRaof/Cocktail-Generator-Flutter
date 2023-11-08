import 'cocktail.dart';
import 'package:dio/dio.dart';

class CocktailApi {
  final dio = Dio();

  Future<List<Cocktail>> getCocktail() async {
    try {
      final response = await dio
          .get('https://www.thecocktaildb.com/api/json/v1/1/random.php');

      if (response.statusCode == 200) {
        final List<Cocktail> cocktail = (response.data['drinks'] as List)
            .map((json) => Cocktail(
                id: json['idDrink'],
                drink: json['strDrink'],
                category: json['strCategory'],
                alcoholic: json['strAlcoholic'],
                glass: json['strGlass'],
                ingredient1: json['strIngredient1'],
                ingredient2: json['strIngredient2'],
                ingredient3: json['strIngredient3'],
                ingredient4: json['strIngredient4'],
                ingredient5: json['strIngredient5'],
                ingredient6: json['strIngredient6'],
                ingredient7: json['strIngredient7'],
                ingredient8: json['strIngredient8'],
                ingredient9: json['strIngredient9'],
                ingredient10: json['strIngredient10'],
                ingredient11: json['strIngredient11'],
                ingredient12: json['strIngredient12'],
                ingredient13: json['strIngredient13'],
                ingredient14: json['strIngredient14'],
                ingredient15: json['strIngredient15'],
                instructions: json['strInstructions'],
                image: json['strDrinkThumb']))
            .toList();

        return cocktail;
      } else {
        throw Exception('Data fetching failed');
      }
    } catch (e) {
      throw Exception('$e');
    }
  }
}
