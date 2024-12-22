import 'package:dependency_injection/di/di.dart';
import 'package:dependency_injection/model/user.dart';
import 'package:dependency_injection/repository/user_repository.dart';


void main(){
  initModule(); 
  UserRepository userRepository = getIt<UserRepository>();
  List<User> lstUser = userRepository.getAllUser();
  print(lstUser);
  
}