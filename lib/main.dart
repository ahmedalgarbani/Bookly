import 'package:Bookly/Features/Home/presentation/view/home.dart';
import 'package:Bookly/Features/Splash/presentation/view/splash.dart';
import 'package:Bookly/core/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoute.router,
      theme: ThemeData.dark(
        useMaterial3: true,
      )
      //   .copyWith(textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      //  ),
      ,
    );
  }
}
