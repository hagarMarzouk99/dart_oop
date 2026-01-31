class BankAccount {
  double ? _balance;
  String name ;
  String id ;
  BankAccount(this.name , this.id);

  set balance (double value){
    _balance = value ;
    }

  double? get balance => _balance;
  void deposit(double amountAdd){
    if(amountAdd > 0){
    _balance = _balance! + amountAdd;
  }
  }

  void withdraw(double amount){
    if(amount <= _balance!){
    _balance = _balance! - amount;
  }
  else{
    print('your balance not enough!!');
  }
  }

}