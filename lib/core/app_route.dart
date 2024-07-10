import 'package:Bookly/Features/Home/presentation/view/home.dart';
import 'package:Bookly/Features/Splash/presentation/view/splash.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static const KHomePageRouter = "/homePage";
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: KHomePageRouter,
      builder: (context, state) => const HomePage(),
    )
  ]);
}
