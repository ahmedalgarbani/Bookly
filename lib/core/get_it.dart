import 'package:Bookly/Features/Home/Data/models/book_model/Repo/Home_repoImp.dart';
import 'package:Bookly/core/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiServices>(
    ApiServices(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoimp>(
    HomeRepoimp(getIt.get<ApiServices>()),
  );
}
