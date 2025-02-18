import 'package:flutter/material.dart';
//Myla Newby - CW02
/*
  Goal: Create 2 screens and implement navigation between 
  1. home screen (displays list of recipe names, can tap on it to view next screen) and 
  2. details screen (displays recipe details like ingredients + instructions)
*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Recipes App'),
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
  List<String> _recipeList = ["Banana Bread", "Pesto Pasta", "Grilled Cheese"];
  /*void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }*/

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "\nYour Recipes:\n",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )
            ),
            /*GestureDetector(
              onTap: (){},
              child: Text('Banana Bread')
            ),*/
            GestureDetector(
              child: Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _recipeList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_recipeList[index]),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
