import 'bank_class.dart';
void main(){
  BankAccount account = BankAccount('hagar' , '123');
  account.balance = 1000;
  account.withdraw(200);
  account.deposit(500);
  print(account.balance);
}

 