import 'package:flutter/material.dart';

import '../components/components.dart';
import '../models/models.dart';

class RecipesGridView extends StatelessWidget {
  // 1
  final List<SimpleRecipe> recipes;

  const RecipesGridView({
    Key? key,
    required this.recipes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 2
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      // 3
      child: GridView.builder(
        // 4
        itemCount: recipes.length,
        // 5
        gridDelegate:
        const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 500.0),
        itemBuilder: (context, index) {
          // 6
          final simpleRecipe = recipes[index];
          return RecipeThumbnail(recipe: simpleRecipe);
        },
      ),
    );
  }
}