import 'dart:io';
main() {
  print("## Diskon ##");
  stdout.write("Total Belanja :");
  int totbelanja = int.parse(stdin.readLineSync());

  if (totbelanja >50000) {
     print("anda mendapatkan potongan sebesar rp.1000"); 
  }else{
    print("maaf anda tidak mendapatkan diskon");
  }
}