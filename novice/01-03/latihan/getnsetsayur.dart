class Sayur {
  String nama;
  int jumlah;

  String get s_nama{
    return nama; //get mengembalikan nilai;
  }

  void set s_nama(String nama){
    this.nama = nama;
  }

  void set s_jumlah(int jumlah){
    if (jumlah <0) {
      print("jumlah tidak sesuai");
    }else{
      this.jumlah = jumlah;
    }
  }

  int get s_jumlah{
    return jumlah;
  }
}

void main(List<String> args) {
  Sayur s1 = new Sayur();
  s1.s_nama = 'Daun Pepaya';
  s1.s_jumlah = 5;
  print(s1.s_nama);
  print(s1.s_jumlah); 
}