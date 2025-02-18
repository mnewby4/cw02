import 'package:flutter/material.dart';
import 'details.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
       body: const Center(
       child: const MyHomePage(title: 'Recipes App'),
     )
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _recipeList = [
    "Banana Bread", 
    "Pesto Pasta", 
    "Grilled Cheese"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "\nYour Recipes:\n",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )
            ),
            Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _recipeList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        //push=adds route to stack of routes managed by navigator
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DetailsPage(
                            recipeName: _recipeList[index],
                          )),
                        );
                      },
                      child: ListTile(
                        title: Text(_recipeList[index]),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
