import 'dart:convert';
import 'package:bankingapp/core/models/account.dart';
import 'package:bankingapp/core/models/user.dart';
import 'package:http/http.dart' as http;

class Api {
  static const url = 'http://us-central1-momentumtest-bfdef.cloudfunctions.net/app/api/v1';

  var client = new http.Client();

  Future<User> getUserProfile(int userId) async {
    // Get user profile for id
    var response = await client.get('$url/users/$userId');

    // Convert and return
    return User.fromJson(json.decode(response.body));
  }

  Future<List<Account>> getAccountForUser(String userId) async {
    var posts = List<Account>();
    // Get user posts for id
    var response = await client.get('$url/account/findByUserId?userId=$userId');

    // parse into List
    var parsed = json.decode(response.body) as List<dynamic>;

    // loop and convert each item to Post
    for (var account in parsed) {
      posts.add(Account.fromJson(account));
    }

    return posts;
  }
}
