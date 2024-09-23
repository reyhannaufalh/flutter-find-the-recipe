import 'package:find_the_recipe/components/molecules/recipe_card.dart';
import 'package:find_the_recipe/model/recipes/recipe.dart';
import 'package:flutter/material.dart';

class RecipesGrid extends StatelessWidget {
  final List<Recipe> recipes;
  final int? limit;

  const RecipesGrid({super.key, required this.recipes, this.limit});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount;
        if (constraints.maxWidth > 480) {
          crossAxisCount = 3;
        } else if (constraints.maxWidth < 360) {
          crossAxisCount = 1;
        } else {
          crossAxisCount = 2;
        }
        List<Recipe> displayedRecipes =
            limit != null ? recipes.take(limit!).toList() : recipes;

        return GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          shrinkWrap: true, // Make the GridView fit its content
          physics:
              const NeverScrollableScrollPhysics(), // Disable GridView's own scrolling
          children: displayedRecipes.map((recipe) {
            return RecipeCard(recipe: recipe);
          }).toList(),
        );
      },
    );
  }
}
