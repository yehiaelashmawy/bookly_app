import 'package:bookly/Features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/view/widgets/books_action.dart';
import 'package:bookly/Features/home/presentation/view/widgets/custom_book_image.dart';
import 'package:bookly/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(
            imageUrl:
                'https://media.springernature.com/full/springer-static/cover-hires/book/978-1-4842-0556-3',
          ),
        ),
        const SizedBox(
          height: 34,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          rating: '3.6',
          count: 1325,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
