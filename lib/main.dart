import 'package:flutter/material.dart';
import 'package:recipecalculator/recipe_calaculator.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(


        useMaterial3: true,
      ),
      home: const RecipeCalculator(),
    );
  }
}


