import 'package:Bookly/Features/Home/presentation/view/book_detailes.dart';
import 'package:Bookly/Features/Home/presentation/view/home.dart';
import 'package:Bookly/Features/Splash/presentation/view/splash.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static const KHomePageRouter = "/homePage";
  static const KBookDetailsRouter = "/bookDetails";
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
      builder: (context, state) => const BookDetailesView(),
    )
  ]);
}
