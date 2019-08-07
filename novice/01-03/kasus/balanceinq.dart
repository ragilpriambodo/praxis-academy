import 'atmmach.dart';

class BalanceInquiry extends ATMMachine{
  static double bc = 0;
  static void set_balance(double b){
    bc = b;
  }
  static double get_balance(){
    return bc;
  }
}