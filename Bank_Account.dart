import 'dart:ffi';

void main(List<String> args) {
  //object from the class
  var user_One= BankAccount.ZeroBalance("omar elsadany");
  user_One.withDraw(200);

  user_One.deposit(500);

  user_One.displayInfo();
  //object from the class
  var user_Two= BankAccount("omar elsadany",600);
  user_One.withDraw(900);

  user_One.deposit(500);

  user_One.displayInfo();
   

}



 // Bank account class
class BankAccount {
  String account;
  double balance;
  
  BankAccount(this.account,this.balance);

  BankAccount.ZeroBalance(this.account) : balance=0;
 
  void withDraw(double amount){
    // check if positive or not
    if(amount <=0){
       print("amount should be positive or above Zero");
       // check if the amount more than the current balance
    }else if(amount > balance){
        print("Insuffecient Amount");
    }else{
      // perform transaction
      balance-=amount;
      print("you withdrawed :$amount  and your Balance now is :$balance");
    }
  }
 
  void deposit(double amount){
    // Add more to your balance
    balance+=amount;
    print("Your Balance now is : $balance");
  }
  
  // display info
  void displayInfo(){
    print("AccountId: $account");
    print("Your Balance is : $balance");
  }


}

