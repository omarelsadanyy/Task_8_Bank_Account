import 'dart:ffi';

void main(List<String> args) {
  var user_One= BankAccount.ZeroBalance("omar elsadany");
  user_One.withDraw(200);

  user_One.deposit(500);

  user_One.displayInfo();

  var user_Two= BankAccount("omar elsadany",600);
  user_One.withDraw(900);

  user_One.deposit(500);

  user_One.displayInfo();
   

}




class BankAccount {
  String account;
  double balance;
  
  BankAccount(this.account,this.balance);

  BankAccount.ZeroBalance(this.account) : balance=0;

  void withDraw(double amount){
    if(amount <=0){
       print("amount should be positive or above Zero");
    }else if(amount > balance){
        print("Insuffecient Amount");
    }else{
      balance-=amount;
      print("you withdrawed :$amount  and your Balance now is :$balance");
    }
  }

  void deposit(double amount){

    balance+=amount;
    print("Your Balance now is : $balance");
  }

  void displayInfo(){
    print("AccountId: $account");
    print("Your Balance is : $balance");
  }


}

