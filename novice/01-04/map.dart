main(List<String> args) {
  Map pegawai = {
    101 : {"nama" : "Ragil", "Divisi" : "CEO", "Gaji" : 200000},
    102 : {"nama" : "Ragil", "Divisi" : "CEO", "Gaji" : 200000},
    103 : {"nama" : "Ragil", "Divisi" : "CEO", "Gaji" : 200000},
  };
  print({pegawai});
  print(pegawai [101]);

  Map ibukota = {"Indo" : "Jakarte", "USA" : "JOngol", "Jepang" : "BAntargebang"};
  print(ibukota ["Indo"]);

  Map ibukoti = {
    "Indo" : "Jakarte", 
    "USA" : "JOngol", 
    "Jepang" : "BAntargebang"};
  print(ibukoti ["Jepang"]);


   var details = {'Usrname':'tom','Password':'pass@123'}; 
   print(details); 

   var detail = {'Usrname':'tom','Password':'pass@123'}; 
   detail['Uid'] = 'U1oo1'; 
   print(detail);

    var detais = new Map(); 
   detais['Usrname'] = 'admin'; 
   detais['Password'] = 'admin@123'; 
   print(detais); 

   Set numberSet = new  Set(); 
   numberSet.add(100); 
   numberSet.add(20); 
   numberSet.add(5); 
   numberSet.add(60); 
   numberSet.add(70);
   print("Default implementation :${numberSet.runtimeType}");  
   
   // all elements are retrieved in the order in which they are inserted 
   for(var no in numberSet) { 
      print(no); 
   } 
}
