import 'package:flutter/material.dart';
import 'package:recipecalculator/details_page.dart';
import 'package:recipecalculator/recipe.dart';

class RecipeCalculator extends StatelessWidget {
  const RecipeCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Calculator'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RecipeDetails(
                        recipe: Recipe.samples[0],
                      )));
        },
        child: SafeArea(
          child: ListView.builder(
            itemCount: Recipe.samples.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage(Recipe.samples[index].imageUrl),
                      ),
                      const SizedBox(
                        height: 14.0,
                      ),
                      Text(
                        Recipe.samples[index].label,
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Palatino',
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
