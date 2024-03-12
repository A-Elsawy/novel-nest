import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:novel_nest/core/utils/app_router.dart';
import 'package:novel_nest/core/utils/service_locator.dart';
import 'package:novel_nest/features/home/data/repos/home_repo_imp.dart';
import 'package:novel_nest/features/home/presentation/view_model/featured_books/featured_books_cubit.dart';
import 'package:novel_nest/features/home/presentation/view_model/newest_books/newest_books_cubit.dart';

void main() {
  setup();
  runApp(const NovelNest());
}

class NovelNest extends StatelessWidget {
  const NovelNest({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepositoryImplementation>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepositoryImplementation>(),
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.cairoTextTheme(),
        ),
      ),
    );
  }
}
