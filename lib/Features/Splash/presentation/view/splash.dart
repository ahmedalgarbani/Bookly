import 'package:Bookly/Features/Home/presentation/view/home.dart';
import 'package:Bookly/Features/Splash/presentation/view/widgets/splashbody.dart';
import 'package:Bookly/constant.dart';
import 'package:Bookly/core/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRoute.KHomePageRouter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashBody(),
    );
  }
}
