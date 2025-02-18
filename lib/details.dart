import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final dynamic recipeName;
  const DetailsPage({Key? key, required this.recipeName}) : super(key: key);

  void _displayRecipe() {
    
  }

  @override
  Widget build(BuildContext context) {
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
          ],
        ),
      ),
    );
  }
}