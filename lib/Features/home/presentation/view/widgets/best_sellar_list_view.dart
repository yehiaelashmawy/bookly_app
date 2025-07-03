import 'package:bookly/Features/home/presentation/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly/Features/home/presentation/view/widgets/best_sellar_list_view_item.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BEstSellarListView extends StatelessWidget {
  const BEstSellarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BookBestSellarListViewItem(
                  booksModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewsetBooksFailure) {
          return CustomErrorWidget(erroMassage: state.erroMassege);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
