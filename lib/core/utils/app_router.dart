import 'package:go_router/go_router.dart';
import 'package:novel_nest/features/home/presentation/view/book_details_view.dart';
import 'package:novel_nest/features/home/presentation/view/home_view.dart';
import 'package:novel_nest/features/search/presentation/view/search_view.dart';
import '../../features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const String homeView = '/homeView';
  static const String bookDetailsView = '/bookDetailsView';
  static const String searchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
