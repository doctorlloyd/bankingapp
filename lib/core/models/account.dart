class Account {
  int balance;
  String name;
  String created;
  String accountNumber;
  int overdraft;
  String id;
  String modified;
  String userId;
  bool active;

  Account(
      {this.id,
        this.balance,
        this.active,
        this.userId,
        this.name,
        this.overdraft,
        this.accountNumber,
        this.created,
        this.modified});

  Account.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    balance = json['balance'];
    active = json['active'];
    userId = json['userId'];
    name = json['name'];
    overdraft = json['overdraft'];
    accountNumber = json['accountNumber'];
    created = json['created'];
    modified = json['modified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['balance'] = this.balance;
    data['active'] = this.active;
    data['userId'] = this.userId;
    data['name'] = this.name;
    data['overdraft'] = this.overdraft;
    data['accountNumber'] = this.accountNumber;
    data['created'] = this.created;
    data['modified'] = this.modified;
    return data;
  }
}