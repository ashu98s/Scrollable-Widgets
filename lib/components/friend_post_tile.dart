import 'package:flutter/material.dart';

import '../components/components.dart';
import '../models/models.dart';

class FriendPostTile extends StatelessWidget {
  final Post post;

  const FriendPostTile({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 1
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // 2
        CircleImage(
          imageProvider: AssetImage(post.profileImageUrl),
          imageRadius: 20,
        ),
        // 3
        const SizedBox(width: 16),
        // 4
        Expanded(
          // 5
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 6
              Text(post.comment),
              // 7
              Text(
                '${post.timestamp} mins ago',
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ],
    );
  }
}