import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:novel_nest/features/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const NovelNest());
}

class NovelNest extends StatelessWidget {
  const NovelNest({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData().copyWith(
      //scaffoldBackgroundColor: kPrimaryColor,
      //     ),
      home: SplashView(),
    );
  }
}
