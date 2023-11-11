import 'package:cocktail_app/cocktail_generator.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        title: "Welcome to the Cocktail Generator!",
        body: "This app will generate a random cocktail for you to try.",
        image: const Center(
            child: Icon(Icons.local_bar, size: 80, color: Colors.purple)),
      ),
      PageViewModel(
        title: "Press the Generate Cocktail button to get started.",
        body:
            "We recommend pressing this button at least 10 times to get a good variety of cocktails.",
        image: const Center(
            child: Icon(Icons.local_bar, size: 80, color: Colors.purple)),
      ),
      PageViewModel(
        title: "Press the history button.",
        body:
            "This will show you a list of all the cocktails you have generated so far along with an option to see the recipe intrsuctions.",
        image: const Center(
            child: Icon(Icons.history, size: 80, color: Colors.purple)),
      ),
      PageViewModel(
        title: "Don't fancy an alcoholic drink?",
        body:
            " Press the Mocktail button in the history section to filter a non-alcoholic cocktail.",
        image: const Center(
            child: Icon(Icons.no_drinks, size: 80, color: Colors.purple)),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: getPages(),
      onDone: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => CocktailGenerator()),
        );
      },
      onSkip: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => CocktailGenerator()),
        );
      },
      showSkipButton: true,
      skip: const Text("Skip"),
      done: const Text("Done"),
      next: const Icon(Icons.arrow_forward),
    );
  }
}
