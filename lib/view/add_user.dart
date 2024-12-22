import 'package:dependency_injection/di/di.dart';
import 'package:dependency_injection/model/user.dart';
import 'package:dependency_injection/repository/user_repository.dart';

void main(){
  initModule();
  User user = User(id: 400, fname: "username", age: 40);
  UserRepository userRepository= getIt<UserRepository>();

  userRepository.addUser(user);

  print(userRepository.getAllUser());

}