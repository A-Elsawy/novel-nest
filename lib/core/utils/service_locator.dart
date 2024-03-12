import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:novel_nest/core/utils/api_service.dart';
import 'package:novel_nest/features/home/data/repos/home_repo_imp.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(
    Dio(),
  );

  getIt.registerSingleton<ApiService>(
    ApiService(
      getIt.get<Dio>(),
    ),
  );

  getIt.registerSingleton<HomeRepositoryImplementation>(
    HomeRepositoryImplementation(
      getIt.get<ApiService>(),
    ),
  );
}
