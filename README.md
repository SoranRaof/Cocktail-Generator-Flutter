# building a cocktail generator app to learn Flutter

Learning Flutter while building a simple app that generates random cocktail recipes

## functionality

- A button prompts user to generate a cocktail.
- Cocktail generates with image, name, category and alcoholic content.
- Use can select see details for further instructions or generate cocktail.
- History icon on the right corner of the screen shows a list of all cocktails generated within the session.

## cocktail_api:

A class that fetches a random cocktail from an API. It sends a GET request to the API, parses the response into a list of Cocktail objects.

## cocktail_generator:

Fetches a random cocktail from an API and displays it. If the cocktail is not already in the list of previous cocktails, it is added.

## previous_cocktail:

Displays a list of previously fetched cocktails.
