part of 'newset_books_cubit.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksInitial extends NewsetBooksState {}

final class NewsetBooksLoading extends NewsetBooksState {}

final class NewsetBooksFailure extends NewsetBooksState {
  final String erroMassege;

  const NewsetBooksFailure(this.erroMassege);
}

final class NewsetBooksSrccuss extends NewsetBooksState {
  final List<BooksModel> books;

  const NewsetBooksSrccuss(this.books);
}
