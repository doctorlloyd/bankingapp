import 'package:bankingapp/core/enums/viewstate.dart';
import 'package:bankingapp/core/models/account.dart';
import 'package:bankingapp/core/viewmodels/home_model.dart';
import 'package:bankingapp/ui/shared/app_colors.dart';
import 'package:bankingapp/ui/shared/text_styles.dart';
import 'package:bankingapp/ui/shared/ui_helpers.dart';
import 'package:bankingapp/ui/widgets/accountlist_item.dart';
import 'package:flutter/material.dart';
import 'base_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      onModelReady: (model) =>
          model.getAccounts('UZyMgwSApiN0b148VDrZSAeWkfb2'),
      builder: (context, model, child) => Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Theme
                .of(context)
                .accentColor,
            title: Text(
              'Home',
            ),
            elevation: 0.0,
          ),
          body: model.state == ViewState.Busy
              ? Center(child: CircularProgressIndicator())
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    UIHelper.verticalSpaceMedium(),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text('Here are all your Accounts',
                          style: subHeaderStyle),
                    ),
                    UIHelper.verticalSpaceSmall(),
                    Expanded(child: getAccountsUi(model.accounts)),
                  ],
                )),
    );
  }

  Widget getAccountsUi(List<Account> accounts) => ListView.builder(
      itemCount: accounts.length,
      itemBuilder: (context, index) => AccountListItem(
            account: accounts[index],
            onTap: () {
              Navigator.pushNamed(context, 'account',
                  arguments: accounts[index]);
            },
          ));
}
