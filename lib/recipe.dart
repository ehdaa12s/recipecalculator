class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(
      {required this.label,
      required this.imageUrl,
      required this.servings,
      required this.ingredients});

  static List<Recipe> samples = [
    Recipe(
      label: 'Spaghetti and Meatballs',
      imageUrl: 'assets/images/meatballs',
      servings: 4,
      ingredients: [
        Ingredient(quantity: 1, measure: 'box', name: 'Spaghetti'),
        Ingredient(quantity: 4, measure: 'cups', name: 'Water'),
        Ingredient(quantity: 0.5, measure: 'jar', name: 'sauce'),
        Ingredient(quantity: 1, measure: 'can', name: 'Meatballs'),
      ],
    ),
    Recipe(
      label: 'Tomato Soup',
      imageUrl: 'assets/images/tomato soup.jpeg',
      servings: 2,
      ingredients: [
        Ingredient(quantity: 1, measure: 'can', name: 'Tomato Soup'),
      ],
    ),
    Recipe(
      label: 'Grilled Cheese',
      imageUrl: 'assets/images/grilledchees',
      servings: 1,
      ingredients: [
        Ingredient(quantity: 2, measure: 'slices', name: 'Cheese'),
        Ingredient(quantity: 2, measure: 'slices', name: 'Bread'),
      ],
    ),
    Recipe(
      label: 'pizza',
      imageUrl: 'assets/images/pizze.jpeg',
      servings: 6,
      ingredients: [
        Ingredient(quantity: 1, measure: 'box', name: 'pizza'),
        Ingredient(quantity: 4, measure: 'cups', name: 'Water'),
        Ingredient(quantity: 0.5, measure: 'jar', name: 'sauce'),
        Ingredient(quantity: 1, measure: 'can', name: 'Meatballs'),
      ],
    ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;
  Ingredient(
      {required this.quantity, required this.measure, required this.name});
}
