import 'package:makany/models/user.dart';

class MyRequests {

   List<User> users = [];

   signUp (User user){
      users.add(user);
   }

   readData (){

   }
}