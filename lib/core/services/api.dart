import 'dart:convert';
import 'package:bankingapp/core/models/account.dart';
import 'package:http/http.dart' as http;

class Api {
  static const url = 'http://us-central1-momentumtest-bfdef.cloudfunctions.net/app/api/v1';

  var client = new http.Client();

  Future<List<Account>> getAccountForUser(String userId) async {
    var response = await client.get('$url/account/findByUserId?userId=$userId');
    List<dynamic> accounts = json.decode(response.body);
    return accounts.map((i) => Account.fromJson(i)).toList();
  }
}
