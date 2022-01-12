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
        label: 'American Breakfast',
        imageUrl: 'assets/food1.jpg',
        servings: 4,
        ingredients: [
          Ingredient(
            1,
            'packet',
            'Flour',
          ),
          Ingredient(
            4,
            'tray',
            'Eggs',
          ),
          Ingredient(
            0.5,
            'jar',
            'sauce',
          ),
        ]),
    Recipe(
        label: 'English Breakfast',
        imageUrl: 'assets/food2.jpeg',
        servings: 4,
        ingredients: [
          Ingredient(
            1,
            'tray',
            'Eggs',
          ),
          Ingredient(
            4,
            '',
            'Bacon',
          ),
          Ingredient(
            0.5,
            'jar',
            'sauce',
          ),
        ]),
    Recipe(
        label: 'Toasted Bread',
        imageUrl: 'assets/food3.jpeg',
        servings: 4,
        ingredients: [
          Ingredient(
            1,
            'loaf',
            'Bread',
          ),
          Ingredient(
            4,
            '',
            'Butter',
          ),
          Ingredient(
            0.5,
            'jar',
            'sauce',
          ),
        ]),
    Recipe(
        label: 'Smoothie',
        imageUrl: 'assets/food4.jpeg',
        servings: 2,
        ingredients: [
          Ingredient(
            1,
            'glass',
            'ice cream',
          ),
          Ingredient(
            4,
            '',
            'berries',
          ),
          Ingredient(
            0.5,
            'jar',
            'water',
          ),
        ]),
    Recipe(
        label: 'American Breakfast',
        imageUrl: 'assets/food1.jpg',
        servings: 4,
        ingredients: [
          Ingredient(
            1,
            'packet',
            'Flour',
          ),
          Ingredient(
            4,
            'tray',
            'Eggs',
          ),
          Ingredient(
            0.5,
            'jar',
            'sauce',
          ),
        ])
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}
