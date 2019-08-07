import 'dart:io';
import 'balanceinq.dart';
import 'withd.dart';
import 'depo.dart';

class ATMMachine {
  static void checkBalance() {
    print("\t Your current balance is ${BalanceInquiry.get_balance()}");
  }
  static void withdrawMoney() {
    if (BalanceInquiry.bc == 0) {
      print("\t Your current balance is zero.");
      print("\t You cannot withdraw!");
      print("\t You need to deposit money first.");
    } else if (BalanceInquiry.bc <= 500) {
      print("\t You do not have sufficient money to withdraw");
      print("\t Check your balance to see your money in the bank");
    } else if (Withdraw.wd > BalanceInquiry.bc) {
      print("\t The amount you withdraw is greater than your balance");
      print("\t Please check the amount you entered");
    } else {
      BalanceInquiry.bc = BalanceInquiry.bc - Withdraw.wd;
      print("You withdraw the amount of Rp ${Withdraw.wd}");
    }
  }
  static void depositMoney() {
    print("You deposited the amount of ${Deposit.dep}");
  }
}
main() {
  int select = 0;
  int choice = 0;
  print("======================================");
  print("welcome to this simple ATM machine");
  print("======================================");
  do {
    do {
      print("\nPlease select ATM Transactions");
      print("\t Press [1] Deposit");
      print("\t Press [2] Withdraw");
      print("\t Press [3] Balance Inquiry");
      print("\t Press [4] Exit");
      stdout.write("What would you like to do?: ");
      select = int.parse(stdin.readLineSync());
      if (select > 4) {
        print("Please select correct transaction");
      } else if (select == 1) {
        stdout.write("Enter the amount of money to deposit: ");
        Deposit.set_deposit(double.parse(stdin.readLineSync()));
        BalanceInquiry.bc = Deposit.get_deposit() + BalanceInquiry.bc;
        ATMMachine.depositMoney();
      } else if (select == 2) {
        print("To withdraw, make sure that you have sufficient balance in your account");
        stdout.write("Enter amount of money to withdraw: ");
        Withdraw.wd = double.parse(stdin.readLineSync());
        ATMMachine.withdrawMoney();
      } else if (select == 3) {
        ATMMachine.checkBalance();
      } else if (select == 4) {
        print("Transaction exited");
        return -1;
      }
    } while (select > 4);
    do {
      print("\nWould you like to try another tansaction?");
      print("\t Press [1] Yes \n \t Press [2] No");
      stdout.write("Enter choice: ");
      choice = int.parse(stdin.readLineSync());
      if (choice > 2) {
        print("Please select correct choice");
      }
    } while (choice > 2);
  } while (choice == 1);
  print("Thank you for using this simple ATM Machine.");
}