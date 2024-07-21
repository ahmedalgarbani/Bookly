import 'package:Bookly/Features/Home/Data/models/book_model/Repo/Home_repoImp.dart';
import 'package:Bookly/Features/Home/presentation/view/home.dart';
import 'package:Bookly/Features/Home/presentation/view_model/Futurebooks_cubit/futurebooks_cubit.dart';
import 'package:Bookly/Features/Home/presentation/view_model/newest_book_cubit/newest_book_cubit.dart';
import 'package:Bookly/Features/Splash/presentation/view/splash.dart';
import 'package:Bookly/core/app_route.dart';
import 'package:Bookly/core/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:bloc/bloc.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FuturebooksCubit(getIt.get<HomeRepoimp>())..featchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBookCubit(getIt.get<HomeRepoimp>()), 
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRoute.router,
        theme: ThemeData.dark(
          useMaterial3: true,
        )
        // .copyWith(textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        ,
      ),
    );
  }
}
