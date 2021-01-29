import 'package:bankingapp/core/models/account.dart';
import 'package:bankingapp/ui/shared/app_colors.dart';
import 'package:bankingapp/ui/shared/text_styles.dart';
import 'package:flutter/material.dart';

class AccountListItem extends StatelessWidget {
  final Account account;
  final Function onTap;

  const AccountListItem({this.account, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: shadowColor,
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: InkWell(
            onTap: onTap,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8 / 4),
                  child: Text(
                    account.accountNumber,
                    style: TextStyle(color: textColor),
                  ),
                ),
                Text(
                  'R ${account.balance == null ? account.balance = 0 : account.balance}',
                  style: subHeaderStyle,
                ),
                Text('${account.active != true ? 'Not Active' : 'Active'}',
                  style: subHeaderStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
