import 'dart:io';
void main(){
  print("### percabangan if ##");
  stdout.write('masukan usia anda :');
  int usia = int.parse(stdin.readLineSync());
  if (usia < 5) {
     print("Anda termasuk balita");
  }
  if (usia > 6 && usia <=10) {
     print("Anda termasuk anak anak");
  }
  if (usia >10 && usia <=20) {
     print("Anda termasuk remaja");
  }
  if (usia >20 && usia <=50) {
     print("Anda termasuk Dewasa");
  }
  if (usia > 50) {
    print("Anda termasuk lansia");
  }
}