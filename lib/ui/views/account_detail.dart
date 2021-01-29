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
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            UIHelper.verticalSpaceLarge(),
            Text(account.name, style: headerStyle),
            UIHelper.verticalSpaceMedium(),
            Text(account.accountNumber),
            // Comments(post.id)
          ],
        ),
      ),
    );
  }
}
