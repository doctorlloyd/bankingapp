import 'package:bankingapp/core/models/account.dart';
import 'package:bankingapp/ui/shared/app_colors.dart';
import 'package:bankingapp/ui/shared/text_styles.dart';
import 'package:bankingapp/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  final Account account;

  AccountView({this.account});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: headerColor,
        title: Text(
          'Personal Bank',
        ),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            UIHelper.verticalSpaceLarge(),
            Text(account.name, style: headerStyle),
            UIHelper.verticalSpaceMedium(),
            Text(account.accountNumber),
            UIHelper.verticalSpaceLarge(),
            Center(
              child: RaisedButton.icon(
                onPressed: null,
                label: Text('Add Account'),
                icon: Icon(
                  Icons.account_box,
                  color: headerColor,
                  size: 24.0,
                  semanticLabel: 'You want to Add Account, try me!!',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton.icon(
                    onPressed: null,
                    label: Text('Withdraw'),
                    icon: Icon(
                      Icons.exposure_minus_1,
                      color: headerColor,
                      size: 24.0,
                      semanticLabel: 'You want to Withdraw, try me!!',
                    ),
                  ),
                  RaisedButton.icon(
                    onPressed: null,
                    label: Text('Deposit'),
                    icon: Icon(
                      Icons.account_balance_wallet_outlined,
                      color: headerColor,
                      size: 24.0,
                      semanticLabel: 'You want to Deposit, try me!!',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
