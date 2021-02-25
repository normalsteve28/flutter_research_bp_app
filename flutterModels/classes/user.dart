
import 'package:flutter/rendering.dart'; //probably wrong, might edit packages later

class User {
  String username;
  String api_key;
  int id;

  User(this.username, this.id, this.api_key);

  factory User.fromJson(Map<String, dynamic> parsedJson) {
    return User(
      parsedJson['username'],
      parsedJson['id'],
      parsedJson['api_key']
      );
  }

}
