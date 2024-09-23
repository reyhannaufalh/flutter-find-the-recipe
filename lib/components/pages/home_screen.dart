import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../model/recipes/recipe.dart';
import '../organisms/bottom_navigation_bar.dart';
import '../organisms/app_bar.dart';
import '../organisms/recipe_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      appBar: const CustomAppBar(title: 'Reyhan Naufal', actions: [
        Icon(
          Icons.notifications_none_outlined,
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
                  _buildHeroImage(recipeList[0]),
                  const SizedBox(height: 24),
                  RecipesGrid(recipes: recipeList),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }

  Widget _buildHeroImage(Recipe recipe) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double imageHeight, titleSize, categorySize;

        if (constraints.maxWidth > 480) {
          imageHeight = 300.0;
          titleSize = 32.0;
          categorySize = 20.0;
        } else {
          imageHeight = 240.0;
          titleSize = 24.0;
          categorySize = 14.0;
        }

        return SizedBox(
          width: constraints.maxWidth,
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
              Positioned(
                top: 24,
                left: 24,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Text(
                    'Featured Recipe',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 24,
                left: 24,
                right: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      recipe.category,
                      style: TextStyle(
                        fontSize: categorySize,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      recipe.title,
                      style: TextStyle(
                        fontSize: titleSize,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Poppins',
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
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
}
