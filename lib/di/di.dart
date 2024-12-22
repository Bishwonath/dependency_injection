\
import 'package:dependency_injection/data_source/local/local_data_source.dart';
import 'package:dependency_injection/data_source/remote/remote_data_source.dart';
import 'package:dependency_injection/repository/user_repository.dart';
final getIt = GetIt.instance;


void initModule(){
  getIt.registerLazySingleton<RemoteDataSource>(()=>RemoteDataSource() );
  getIt.registerLazySingleton<LocalDataSource>(()=>LocalDataSource() );

  getIt.registerLazySingleton<UserRepository>(() => UserRepository(localData: getIt(), remoteData: getIt()));


}