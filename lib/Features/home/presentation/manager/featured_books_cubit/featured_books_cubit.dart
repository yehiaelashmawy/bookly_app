// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.erroMassege));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
