import 'package:find_the_recipe/model/recipes/recipe.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Recipe recipe;
  const DetailScreen({super.key, required this.recipe});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double imageHeight = constraints.maxWidth > 480 ? 250 : 150;
          return Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      _buildImage(imageHeight),
                      const SizedBox(height: 16),
                      _buildRecipeDetails(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80.0),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImage(double imageHeight) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.network(
        widget.recipe.image,
        fit: BoxFit.cover,
        height: imageHeight,
      ),
    );
  }

  Widget _buildRecipeDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.recipe.title,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          widget.recipe.description,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 8),
        _buildInfoRow(),
        const SizedBox(height: 8),
        Divider(color: Colors.grey[300], thickness: 1),
        const SizedBox(height: 8),
        _buildSectionTitle('Ingredients:'),
        const SizedBox(height: 8),
        _buildIngredients(),
        const SizedBox(height: 8),
        Divider(color: Colors.grey[300], thickness: 1),
        const SizedBox(height: 8),
        _buildSectionTitle('Steps:'),
        const SizedBox(height: 8),
        _buildSteps(),
        const SizedBox(height: 32),
      ],
    );
  }

  Widget _buildInfoRow() {
    return Row(
      children: <Widget>[
        _buildInfoIcon(Icons.access_time, widget.recipe.lengthOfTime),
        const SizedBox(width: 24),
        _buildInfoIcon(Icons.calculate_outlined, widget.recipe.calories),
      ],
    );
  }

  Widget _buildInfoIcon(IconData icon, String text) {
    return Row(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.grey[200],
          ),
          child: Icon(icon, size: 14),
        ),
        const SizedBox(width: 3),
        Text(
          text,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildIngredients() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.recipe.ingredients
          .map((ingredient) => Text(
                '• $ingredient',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[600],
                ),
              ))
          .toList(),
    );
  }

  Widget _buildSteps() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.recipe.steps
          .asMap()
          .entries
          .map((step) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  Text(
                    '${step.key + 1}. ${step.value}',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 4),
                ],
              ))
          .toList(),
    );
  }
}
