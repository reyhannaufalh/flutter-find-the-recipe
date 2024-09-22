import 'package:find_the_recipe/components/molecules/recipe_card.dart';
import 'package:find_the_recipe/components/organisms/app_bar.dart';
import 'package:find_the_recipe/components/organisms/bottom_navigation_bar.dart';
import 'package:find_the_recipe/components/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:find_the_recipe/model/recipes/recipe.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Recipe> _filteredRecipes = [];

  @override
  void initState() {
    super.initState();
    _filteredRecipes =
        recipeList; // Initialize filteredRecipes with all recipes
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Row(
            // Use Row for horizontal centering
            mainAxisAlignment:
                MainAxisAlignment.center, // Center content horizontally
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextField(
                        controller: _searchController,
                        decoration: const InputDecoration(
                          hintText: 'Search recipes...',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {
                          _filterRecipes(value);
                        },
                      ),
                      const SizedBox(height: 24),
                      _filteredRecipes.isEmpty
                          ? const Text('No recipes found.')
                          : _buildPopularRecipes(_filteredRecipes),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          }
        },
      ),
    );
  }

  void _filterRecipes(String value) {
    _filteredRecipes = recipeList
        .where((recipe) =>
            recipe.title.toLowerCase().contains(value.toLowerCase()))
        .toList();
    setState(() {}); // Update UI with filtered recipes
  }

  Widget _buildPopularRecipes(List<Recipe> recipes) {
    return Column(
      children: [
        Container(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            shrinkWrap: true, // Make the GridView fit its content
            physics:
                const NeverScrollableScrollPhysics(), // Disable GridView's own scrolling
            children: recipes.map((recipe) {
              return RecipeCard(recipe: recipe);
            }).toList(),
          ),
        ),
      ],
    );
  }
}
