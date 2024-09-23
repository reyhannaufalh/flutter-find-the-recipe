import 'package:find_the_recipe/components/molecules/recipe_card.dart';
import 'package:find_the_recipe/components/organisms/recipe_grid.dart';
import '../organisms/bottom_navigation_bar.dart';
import 'package:find_the_recipe/components/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:find_the_recipe/model/recipes/recipe.dart';
import '../atoms/category_button.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Recipe> _filteredRecipes = [];
  String _selectedCategory = 'All Recipes';

  @override
  void initState() {
    super.initState();
    _filteredRecipes = recipeList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600),
                child: Column(
                  children: [
                    TextField(
                      controller: _searchController,
                      decoration: const InputDecoration(
                        hintText: 'Search recipes...',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                      onChanged: (value) {
                        _filterRecipes(value);
                      },
                    ),
                    const SizedBox(height: 12),
                    _buildCategories(),
                    const SizedBox(height: 24),
                    _filteredRecipes.isEmpty
                        ? const Center(child: Text('No recipes found.'))
                        : RecipesGrid(recipes: _filteredRecipes),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);
          }
        },
      ),
    );
  }

  void _filterRecipes(String value) {
    setState(() {
      _filteredRecipes = recipeList
          .where((recipe) =>
              recipe.title.toLowerCase().contains(value.toLowerCase()) &&
              (_selectedCategory == 'All Recipes' ||
                  recipe.category == _selectedCategory))
          .toList();
    });
  }

  void _selectCategory(String category) {
    setState(() {
      _selectedCategory = category;
      _filterRecipes(_searchController.text);
    });
  }

  Widget _buildCategories() {
    const categories = ['All Recipes', 'Breakfast', 'Lunch', 'Dinner', 'Snack'];
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: Align(
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: categories.map((category) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CategoryButton(
                  text: category,
                  isActive: _selectedCategory == category,
                  onTap: () => _selectCategory(category),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
