 
/* import 'dart:async';
import 'package:http/http.dart' show Client;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todoapp/models/classes/task.dart';
import 'dart:convert';
import 'package:todoapp/models/classes/user.dart'; */ 

//Import something here, depending on the file location lol hehe


//sample code, might change in the Future
class ApiProvider {
  Client client = Client();
  final _apiKey = 'your_api_key';
  
  Future<User> registerUser(String username) async {
    final response = await client
        .post(//"Link Here",
        // headers: "",
        body: jsonEncode(
          {
	          "username" : username,
	      
        }
        ) 
        );
    final Map result = json.decode(response.body);
    if (response.statusCode == 201) {
      // If the call to the server was successful, parse the JSON
      await saveApiKey(result["data"]["api_key"]);
      return User.fromJson(result["data"]);
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
    
    Future signinUser(String username,String apiKey) async {
    final response = await client
        .post("http://127.0.0.1:5000/api/signin",
        headers: {
          "Authorization" : apiKey
        },
        body: jsonEncode(
          {
	          "username" : username,
        }
        ) 
        );
    final Map result = json.decode(response.body);
    if (response.statusCode == 201) {
      // If the call to the server was successful, parse the JSON
      await saveApiKey(result["data"]["api_key"]);
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
  
  
    Future<List<History>> getHistory(String apiKey) async {
    final response = await client
        .get(//"Link Here",
        headers: {
          "Authorization" : apiKey
        },
        );
    final Map result = json.decode(response.body);
    if (response.statusCode == 201) {
      // If the call to the server was successful, parse the JSON
      List<History> tasks = [];
      for (Map json_ in result["data"]) {
        try {
          histories.add(Task.fromJson(json_));
        }
        catch (Exception) {
          print(Exception);
        }
      }
      for (History history in histories) {
        print(history.historyId);
      }
      return histories;
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to parse histories');
    }
  } 
    Future addUserTask(String apiKey, String Systolic, String Diastolic, String heartrate, DateTime datetime) async {
    final response = await client
        .post(//"Link here",
        headers: {
          "Authorization" : apiKey
        },
        body: jsonEncode({
          "Systolic Pressure": Systolic,
          "Diastolic Pressure": Diastolic,
          "heartrate": heartrate, 
          "DateTime": datetime, 
          "Title": ""
        })
        );
    if (response.statusCode == 201) {
      print("History added");
    } else {
      // If that call was not successful, throw an error.
      print(json.decode(response.body));
      throw Exception('Failed to load tasks');
    }
  }

 saveApiKey(String api_key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('API_Token', api_key);
 }
  
    
  
 
   
