import 'package:bookly/Features/home/data/models/books_model/books_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/home/presentation/manager/simillar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/home/presentation/view/book_detials_view.dart';
import 'package:bookly/Features/home/presentation/view/home_view.dart';
import 'package:bookly/Features/search/presentation/view/search_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(
            booksModel: state.extra as BooksModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
