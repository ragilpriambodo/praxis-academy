main(List<String> args) {
  Buah c = new Buah(); //inisialisasi variabel buah
  c.Buahku(); // memanggil buah
}
class Buah {
  String namabuah ="Anggur";
//function "melakukan tindakan yang dapat dilakukan suatu objek / disebut juga method" 
  void Buahku(){
    print(namabuah);
  }
}