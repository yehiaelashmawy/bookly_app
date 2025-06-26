import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/ar/a/a5/%D8%BA%D9%84%D8%A7%D9%81_%D9%83%D8%AA%D8%A7%D8%A8_%D9%82%D8%B5%D9%91%D8%A9_%D8%A7%D9%84%D9%81%D9%86%D9%91.jpg',
            ),
          ),
        ),
      ),
    );
  }
}
