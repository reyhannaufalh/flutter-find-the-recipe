import 'package:find_the_recipe/components/molecules/recipe_card.dart';
import 'package:find_the_recipe/components/organisms/app_bar.dart';
import 'package:find_the_recipe/components/pages/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../atoms/category_button.dart';
import 'package:find_the_recipe/model/recipes/recipe.dart';
import '../organisms/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Transparent status bar
      statusBarIconBrightness: Brightness.dark, // Dark icons
    ));
    return Scaffold(
      appBar: const CustomAppBar(title: 'Reyhan Naufal', actions: [
        Icon(
          Icons.notifications_none_outlined,
          // onPressed: () {},
        ),
      ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildHeroImage(),
                  const SizedBox(height: 24),
                  _buildCategories(),
                  const SizedBox(height: 24),
                  _buildPopularRecipes(),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchScreen()),
            );
          }
        },
      ),
    );
  }

  Widget _buildHeroImage() {
    return LayoutBuilder(
      builder: (context, constraints) {
        double imageHeight = constraints.maxWidth > 480 ? 320.0 : 240.0;
        return Container(
          width: constraints
              .maxWidth, // Set the width to the max width of the parent
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: SvgPicture.asset(
                  'assets/hero.svg',
                  fit: BoxFit.cover,
                  height: imageHeight,
                ),
              ),
              const Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Breakfast',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Asian white noodle with extra seafood',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCategories() {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: const Align(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Categories',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryButton(text: 'Breakfast'),
                  SizedBox(width: 8),
                  CategoryButton(text: 'Lunch'),
                  SizedBox(width: 8),
                  CategoryButton(text: 'Dinner'),
                  SizedBox(width: 8),
                  CategoryButton(text: 'Snack'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPopularRecipes() {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            // TextButton(
            //   child: Text('See all'),
            // ),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            shrinkWrap: true, // Make the GridView fit its content
            physics:
                const NeverScrollableScrollPhysics(), // Disable GridView's own scrolling
            children: recipeList.take(2).map((recipe) {
              return RecipeCard(recipe: recipe);
            }).toList(),
          ),
        ),
      ],
    );
  }
}
