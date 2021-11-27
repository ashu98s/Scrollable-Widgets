import 'package:flutter/material.dart';

import '../models/models.dart';

class RecipeThumbnail extends StatelessWidget {
  // 1
  final SimpleRecipe recipe;

  const RecipeThumbnail({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 2
    return Container(
      padding: const EdgeInsets.all(8),
      // 3
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 4
          Expanded(
            // 5
            child: ClipRRect(
              child: Image.asset(
                '${recipe.dishImage}',
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          // 6
          const SizedBox(height: 10),
          // 7
          Text(
            recipe.title,
            maxLines: 1,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            recipe.duration,
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}