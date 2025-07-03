import 'package:bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly/core/utils/lanch_uri.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.booksModel});
  final BooksModel booksModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: 'Free',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
              child: CustomButton(
            onPressed: () {
              lanchCusomUri(context, booksModel.volumeInfo.previewLink!);
            },
            text: getText(booksModel),
            fontSize: 16,
            backgroundColor: const Color(0xffef8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          )),
        ],
      ),
    );
  }

  String getText(BooksModel booksModel) {
    if (booksModel.volumeInfo.previewLink == null) {
      return 'Not Avilable';
    } else {
      return 'Free Preview';
    }
  }
}
