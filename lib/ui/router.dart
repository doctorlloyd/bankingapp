import 'package:bankingapp/core/models/account.dart';
import 'package:bankingapp/ui/views/account_detail.dart';
import 'package:bankingapp/ui/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const String initialRoute = "login";

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeView());
      case 'account':
        var account = settings.arguments as Account;
        return MaterialPageRoute(builder: (_) => AccountView(account: account));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
