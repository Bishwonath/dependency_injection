import 'package:dependency_injection/model/user.dart';


class RemoteDataSource{
  
    List <User> lstUsers = [
    User(id: 2, fname: "remote hari", age: 21),
    User(id: 3, fname: "remote salman", age: 30),
    User(id: 4, fname: "remote khan", age: 100),

  ];

    bool addUser(User user){
    lstUsers.add(user);
    return true;
  }

  List <User> getAllUser(){
    return lstUsers;
  }


}