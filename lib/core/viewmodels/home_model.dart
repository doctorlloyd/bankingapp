import 'package:bankingapp/core/enums/viewstate.dart';
import 'package:bankingapp/core/models/account.dart';
import 'package:bankingapp/core/services/api.dart';
import 'package:bankingapp/locator.dart';

import 'base_model.dart';

class HomeModel extends BaseModel {
  Api _api = locator<Api>();

  List<Account> accounts;

  Future getAccounts(String userId) async {
    setState(ViewState.Busy);
    accounts = await _api.getAccountForUser(userId);
    setState(ViewState.Idle);
  }
}