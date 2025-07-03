// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimaillarBooks(category: category);
    result.fold((failure) {
      emit(SimilarBooksaFailur(failure.erroMassege));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
