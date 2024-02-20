import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:novel_nest/core/utils/app_router.dart';

void main() {
  runApp(const NovelNest());
}

class NovelNest extends StatelessWidget {
  const NovelNest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.cairoTextTheme(),
      ),
    );
  }
}
