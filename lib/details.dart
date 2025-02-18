import 'package:flutter/material.dart';
class DetailsPage extends StatelessWidget {
  final dynamic recipeName;
  DetailsPage({super.key, required this.recipeName});
  final Map<String, String> _recipeDetails = {
    "Banana Bread": 
      "Ingredients: Ripe bananas, melted butter, baking soda, salt, sugar, eggs, vanilla extract, and flour.\n\n 1. Mash ripe bananas in a mixing bowl with a fork until smooth with melted butter. \n2. Mix in baking soda, salt, sugar, eggs, flour and vanilla extract. \n3. Bake in a loaf pan for ~1 hour at 350F.",
    "Pesto Pasta": 
      "Ingredients: Pasta, pesto paste, and water.\n\n1. Boil the pasta and scoop out 1 cup of pasta water. \n2. Drain the pasta and add it to your pot. \n3. Add pesto, pasta water, and seasonings to taste.",
    "Grilled Cheese": 
      "Ingredients: Butter, bread, cheese, mayo (optional)\n\n1. Spread mayo or butter on the outside of the bread, insides optional. \n2. Place cheese in between the bread slices. \n3. Stire on both sides until golden brown.",
  };  

  @override
  Widget build(BuildContext context) {
    String? details = _recipeDetails[recipeName];
    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Details')),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "\n$recipeName\n", 
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )
            ),
            Text('$details'),
          ],
        ),
      ),
    );
  }
}