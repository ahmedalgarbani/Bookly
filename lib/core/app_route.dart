import 'package:Bookly/Features/Home/Data/models/book_model/Repo/Home_repoImp.dart';
import 'package:Bookly/Features/Home/Data/models/book_model/book.dart';
import 'package:Bookly/Features/Home/presentation/view/book_detailes.dart';
import 'package:Bookly/Features/Home/presentation/view/home.dart';
import 'package:Bookly/Features/Home/presentation/view_model/search_cubit/search_cubit.dart';
import 'package:Bookly/Features/Home/presentation/view_model/similarbooks/similar_book_cubit.dart';
import 'package:Bookly/Features/Splash/presentation/view/splash.dart';
import 'package:Bookly/Features/search/presentation/view/search.dart';
import 'package:Bookly/core/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static const KHomePageRouter = "/homePage";
  static const KBookDetailsRouter = "/bookDetails";
  static const KSearchRouter = "/searchRouter";

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: KHomePageRouter,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: KBookDetailsRouter,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBookCubit(getIt.get<HomeRepoimp>()),
        child: BookDetailesView(
          bookMoodel: state.extra as Book,
        ),
      ),
    ),
    GoRoute(
      path: KSearchRouter,
      builder: (context, state) => BlocProvider(
        create: (context) => SearchCubit(getIt.get<HomeRepoimp>()),
        child: const SearchPage(),
      ),
    ),
  ]);
}
