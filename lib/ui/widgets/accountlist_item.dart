import 'package:bankingapp/core/models/account.dart';
import 'package:flutter/material.dart';

class AccountListItem extends StatelessWidget {
  final Account account;
  final Function onTap;
  const AccountListItem({this.account, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Color(0xffE86ED0),
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: InkWell(
            onTap: onTap,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  account.name,
                  fit: BoxFit.cover,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Color(0xffE86ED0),
                        ),
                        value: loadingProgress.expectedTotalBytes !=
                            null
                            ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes
                            : null,
                      ),
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8 / 4),
                  child: Text(
                    account.accountNumber,
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                Text(
                  "R ${account.balance}",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  " ${account.active}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
