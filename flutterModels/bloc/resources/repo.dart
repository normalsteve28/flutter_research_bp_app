/*import 'dart:async';
import 'api.dart';
import 'package:todoapp/models/classes/user.dart'; */

class Repository {
  final apiProvider = ApiProvider();

  Future<User> registerUser(String username) 
    => apiProvider.registerUser(username);

  Future signinUser(String username, String apiKey) 
    => apiProvider.signinUser(username, apiKey);
  
  Future getUserTasks(String apiKey) 
    => apiProvider.getUserTasks(apiKey);

  Future<Null> addUserTask(String apiKey, String Systolic, String Diastolic, String heartrate, DateTime datetime ) async {
    apiProvider.addHistory(apiKey, Systolic, Diastolic, heartrate, datetime);
  }
