import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit() : super(NewsetBooksInitial());
}
