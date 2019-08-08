void main(){
  List salam = ["pagi","siang","malam"];
  print("jumlah element / panjang list : ${salam.length}");

  for (int i=0; i < salam.length; i++){
    print(salam[i]);
  }

   var lst = new List(3); 
   lst[0] = 12; 
   lst[1] = 13; 
   lst[2] = 11; 
   print(lst); 
}
