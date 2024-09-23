class Recipe {
  final String title;
  final String description;
  final String calories;
  final String lengthOfTime;
  final List<String> ingredients;
  final List<String> steps;
  final String image;
  final String category;
  final DateTime publishedAt;

  Recipe({
    required this.title,
    required this.description,
    required this.calories,
    required this.lengthOfTime,
    required this.ingredients,
    required this.steps,
    required this.image,
    required this.category,
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
    category: 'Breakfast',
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
    category: 'Breakfast',
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOmVj-W8WCAWTM_zMAiGClw-uRejIrCgjLCA&s",
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
    category: 'Breakfast',
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9gBjTJnLa6A4Kpv69N86A6KuSULFho_oC7w&s",
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
    category: "Lunch",
    image:
        "https://gimmesomegrilling.com/wp-content/uploads/2021/05/Grilled-Chicken-Salad-Recipe-Square.jpg",
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
    category: "Lunch",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRglVAdjSKlGW_lqoWhbHtHY7h6jAxjg-kgIw&s",
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
    category: "Lunch",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTxyb1Kt6b4ED2eQPAb1nYYpdvAdv6q5XhjA&s",
    publishedAt: DateTime(2024, 9, 22),
  ),
  Recipe(
    title: "Creamy Tomato Pasta",
    description:
        "A quick and easy weeknight dinner that's packed with flavor. This creamy tomato pasta is sure to become a family favorite.",
    calories: '450 kcal',
    lengthOfTime: '30 min',
    ingredients: [
      "1 pound pasta (penne, rotini, or your favorite shape)",
      "1 tablespoon olive oil",
      "1 clove garlic, minced",
      "1 (28-ounce) can crushed tomatoes",
      "1/2 cup heavy cream",
      "1/4 cup grated Parmesan cheese",
      "Salt and pepper to taste",
      "Fresh basil leaves, for garnish (optional)",
    ],
    steps: [
      "Cook the pasta according to package directions. Drain and set aside.",
      "Heat olive oil in a large skillet over medium heat. Add garlic and cook for 30 seconds, until fragrant.",
      "Stir in crushed tomatoes, heavy cream, and Parmesan cheese. Bring to a simmer and cook for 5 minutes, stirring occasionally.",
      "Season with salt and pepper to taste.",
      "Toss the cooked pasta with the tomato sauce. Garnish with fresh basil leaves, if desired.",
    ],
    category: 'Dinner',
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUY_wAzlGUZV0i_QkNSbvL2GKZh0Ys9ZKnuA&s", // Replace with actual image URL
    publishedAt: DateTime(2024, 9, 22),
  ),
  Recipe(
    title: "Lemon Garlic Chicken with Roasted Vegetables",
    description:
        "A healthy and flavorful one-pan dinner. The chicken is juicy and tender, and the roasted vegetables are perfectly caramelized.",
    calories: '500 kcal',
    lengthOfTime: '45 min',
    ingredients: [
      "4 boneless, skinless chicken breasts",
      "2 tablespoons olive oil",
      "1 tablespoon lemon juice",
      "1 teaspoon dried oregano",
      "1/2 teaspoon garlic powder",
      "Salt and pepper to taste",
      "1 pound assorted vegetables (broccoli, carrots, potatoes, etc.)",
    ],
    steps: [
      "Preheat oven to 400°F (200°C).",
      "In a bowl, whisk together olive oil, lemon juice, oregano, garlic powder, salt, and pepper.",
      "Place chicken breasts in a baking dish and pour the marinade over them. Toss to coat.",
      "Cut vegetables into bite-sized pieces and arrange them around the chicken in the baking dish.",
      "Bake for 30-35 minutes, or until the chicken is cooked through and the vegetables are tender.",
    ],
    category: 'Dinner',
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD0QcqODxG4zmGxWTXN0bkEZ47L_H-IEKcJQ&s", // Replace with actual image URL
    publishedAt: DateTime(2024, 9, 22),
  ),
  Recipe(
    title: "Cheesy Garlic Bread Bites",
    description:
        "A delicious and easy appetizer or snack. These cheesy garlic bread bites are perfect for parties or a quick and tasty treat.",
    calories: '200 kcal',
    lengthOfTime: '30 min',
    ingredients: [
      "1 loaf French bread, cut into 1-inch cubes",
      "1/4 cup melted butter",
      "2 cloves garlic, minced",
      "1/2 cup grated Parmesan cheese",
      "1/4 cup shredded mozzarella cheese",
      "Dried oregano and basil, to taste",
      "Salt and pepper to taste",
    ],
    steps: [
      "Preheat oven to 400°F (200°C).",
      "In a small bowl, combine melted butter, minced garlic, Parmesan cheese, mozzarella cheese, oregano, basil, salt, and pepper.",
      "Toss the bread cubes in the cheese mixture until evenly coated.",
      "Spread the bread cubes on a baking sheet and bake for 10-12 minutes, or until golden brown and crispy.",
    ],
    category: 'Snack',
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1ccWnCvbAzAdNMvUGmElJrULUcpYdc8OkxQ&s", // Replace with actual image URL
    publishedAt: DateTime(2024, 9, 22),
  ),
  Recipe(
    title: "Homemade Trail Mix",
    description:
        "A customizable and healthy snack that's perfect for on-the-go. Customize your trail mix with your favorite nuts, seeds, and dried fruits.",
    calories: '200 kcal',
    lengthOfTime: '10 min',
    ingredients: [
      "1 cup almonds",
      "1 cup peanuts",
      "1/2 cup dried cranberries",
      "1/4 cup dark chocolate chips",
      "1/4 cup sunflower seeds",
      "1/4 cup pumpkin seeds",
      "Optional: coconut flakes, raisins, pretzels",
    ],
    steps: [
      "In a large bowl, combine all ingredients.",
      "Mix well to ensure that the ingredients are evenly distributed.",
      "Store in an airtight container for up to 2 weeks.",
    ],
    category: 'Snack',
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR62SjMGRB217RC30JfW1XI6oWSToMSyuj9Aw&s", // Replace with actual image URL
    publishedAt: DateTime(2024, 9, 22),
  ),
];
