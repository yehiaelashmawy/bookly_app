import 'package:bookly/Features/home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimillarBooksListView extends StatelessWidget {
  const SimillarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: CustomBookImage(
                imageUrl:
                    'https://media.springernature.com/full/springer-static/cover-hires/book/978-1-4842-0556-3',
              ),
            );
          }),
    );
  }
}
