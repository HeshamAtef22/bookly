import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

//getit مهمتها انها بتعمل نسخه واحده من فانكشن او سيرفس معينة بتقدر تستخدمها في اي مكان

final getIt = GetIt.instance;
void setupServiceLocator() {
  //هعمل نسخه من الapiService لانها هيتم استدعائها اكتر من مره
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    homeLocalDataSource: HomeLocalDataSourceImpl(),
    homeRemoteDataSource: HomeRemoteDataSourceImpl(
      getIt.get<ApiService>(),
    ),
  ),);
}