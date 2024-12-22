import 'package:dependency_injection/data_source/local/local_data_source.dart';
import 'package:dependency_injection/data_source/remote/remote_data_source.dart';
import 'package:dependency_injection/model/user.dart';


class UserRepository{

  final RemoteDataSource remoteData;
  final LocalDataSource localData ;
  UserRepository({
    required this.localData,
    required this.remoteData
  });

  bool isNetwork = false;

  bool addUser(User user){
    if (isNetwork){
      return RemoteDataSource().addUser(user);
    }else{
      return LocalDataSource().addUser(user);
    }
  }

  List<User> getAllUser(){
    if (isNetwork){
      return RemoteDataSource().getAllUser();
    }else{
      return LocalDataSource().getAllUser();
    }
  }

}