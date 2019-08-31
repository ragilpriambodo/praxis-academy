main(){
  Buah c1=new Buah.namedConst('semangka');
  Buah c2=new Buah();
}
class Buah {
  Buah(){ //deklarasi konstruktor
    print("ini memanggil kostruktor non parameter");
  }
  Buah.namedConst(String buah){
    print("cetak nama buah: $buah");
  }
  
}