class Recipe {
  final String title;
  final String description;
  final String calories;
  final String lengthOfTime; // in minutes
  final List<String> ingredients;
  final List<String> steps;
  final String image;
  final DateTime publishedAt;

  Recipe({
    required this.title,
    required this.description,
    required this.calories,
    required this.lengthOfTime,
    required this.ingredients,
    required this.steps,
    required this.image,
    required this.publishedAt,
  });
}

var recipeList = [
  Recipe(
    title: "Avocado Toast",
    description:
        "A quick and easy breakfast that is both healthy and delicious, perfect for starting the day.",
    calories: '250 kcal',
    lengthOfTime: '10 min',
    ingredients: [
      "1 slice of whole-grain bread",
      "1 ripe avocado",
      "1/2 lemon (juice)",
      "Salt and pepper to taste",
      "Optional: red pepper flakes",
    ],
    steps: [
      "Toast the bread.",
      "Mash the avocado in a bowl and add lemon juice, salt, and pepper.",
      "Spread the avocado mixture on the toast.",
      "Sprinkle red pepper flakes if desired.",
    ],
    image:
        "https://th.bing.com/th/id/OIP.R8Suh3Z4LxZoBorM7nbQcwHaKX?rs=1&pid=ImgDetMain",
    publishedAt: DateTime(2024, 9, 22),
  ),
  Recipe(
    title: "Smoothie Bowl",
    description:
        "A colorful and nutrient-packed breakfast, perfect for those who like to eat light but filling meals in the morning.",
    calories: '350 kcal',
    lengthOfTime: '15 min',
    ingredients: [
      "1 banana",
      "1/2 cup frozen berries",
      "1/2 cup almond milk",
      "1 tablespoon peanut butter",
      "Granola and fresh fruits for topping",
    ],
    steps: [
      "Blend the banana, frozen berries, almond milk, and peanut butter until smooth.",
      "Pour the mixture into a bowl.",
      "Top with granola, fresh fruits, and any other toppings you like.",
    ],
    image:
        "https://th.bing.com/th/id/OIP.R8Suh3Z4LxZoBorM7nbQcwHaKX?rs=1&pid=ImgDetMain",
    publishedAt: DateTime(2024, 9, 22),
  ),
  Recipe(
    title: "Oatmeal with Berries",
    description:
        "A classic and hearty breakfast that will keep you full and energized for the morning.",
    calories: '400 kcal',
    lengthOfTime: '20 min',
    ingredients: [
      "1 cup oats",
      "2 cups water or milk",
      "1/2 cup mixed berries",
      "1 tablespoon honey or maple syrup",
      "Optional: nuts or seeds for topping",
    ],
    steps: [
      "Bring water or milk to a boil.",
      "Stir in the oats and reduce the heat.",
      "Cook for 5-7 minutes, stirring occasionally.",
      "Add mixed berries and honey or maple syrup.",
      "Serve with additional toppings if desired.",
    ],
    image:
        "https://th.bing.com/th/id/OIP.R8Suh3Z4LxZoBorM7nbQcwHaKX?rs=1&pid=ImgDetMain",
    publishedAt: DateTime(2024, 9, 22),
  ),
  Recipe(
    title: "Grilled Chicken Salad",
    description:
        "A light and refreshing salad with grilled chicken, perfect for a healthy and satisfying lunch.",
    calories: '350 kcal',
    lengthOfTime: '30 min',
    ingredients: [
      "1 chicken breast, grilled and sliced",
      "2 cups mixed greens",
      "1/2 cucumber, sliced",
      "1/2 cup cherry tomatoes, halved",
      "1/4 cup feta cheese, crumbled",
      "2 tablespoons olive oil",
      "1 tablespoon balsamic vinegar",
      "Salt and pepper to taste",
    ],
    steps: [
      "Grill the chicken breast and slice it.",
      "In a large bowl, combine mixed greens, cucumber, tomatoes, and feta cheese.",
      "Drizzle with olive oil and balsamic vinegar, and season with salt and pepper.",
      "Top with sliced grilled chicken and serve.",
    ],
    image:
        "https://th.bing.com/th/id/OIP.R8Suh3Z4LxZoBorM7nbQcwHaKX?rs=1&pid=ImgDetMain",
    publishedAt: DateTime(2024, 9, 22),
  ),
  Recipe(
    title: "Veggie Stir-Fry",
    description:
        "A quick and flavorful stir-fry packed with fresh vegetables, perfect for a light yet filling lunch.",
    calories: '400 kcal',
    lengthOfTime: '25 min',
    ingredients: [
      "1 tablespoon olive oil",
      "1 bell pepper, sliced",
      "1 zucchini, sliced",
      "1 carrot, julienned",
      "1/2 onion, sliced",
      "2 cloves garlic, minced",
      "2 tablespoons soy sauce",
      "1 tablespoon sesame oil",
      "Cooked rice for serving",
    ],
    steps: [
      "Heat olive oil in a pan over medium heat.",
      "Add garlic and onions, sauté until fragrant.",
      "Add the remaining vegetables and stir-fry until tender.",
      "Drizzle with soy sauce and sesame oil, and mix well.",
      "Serve the stir-fry over cooked rice.",
    ],
    image:
        "https://th.bing.com/th/id/OIP.R8Suh3Z4LxZoBorM7nbQcwHaKX?rs=1&pid=ImgDetMain",
    publishedAt: DateTime(2024, 9, 22),
  ),
  Recipe(
    title: "Quinoa and Avocado Bowl",
    description:
        "A nutritious and filling quinoa bowl with avocado, black beans, and a zesty lime dressing.",
    calories: '450 kcal',
    lengthOfTime: '20 min',
    ingredients: [
      "1 cup cooked quinoa",
      "1/2 avocado, sliced",
      "1/2 cup black beans, cooked",
      "1/4 cup corn kernels",
      "1 tablespoon lime juice",
      "1 tablespoon olive oil",
      "Salt and pepper to taste",
      "Fresh cilantro for garnish",
    ],
    steps: [
      "In a bowl, combine cooked quinoa, black beans, and corn.",
      "Drizzle with lime juice and olive oil, and season with salt and pepper.",
      "Top with sliced avocado and garnish with fresh cilantro.",
    ],
    image:
        "https://th.bing.com/th/id/OIP.R8Suh3Z4LxZoBorM7nbQcwHaKX?rs=1&pid=ImgDetMain",
    publishedAt: DateTime(2024, 9, 22),
  ),
];
