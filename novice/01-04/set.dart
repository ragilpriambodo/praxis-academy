import 'dart:collection';
main(List<String> args) {
  Set awarna = new Set.from(["merah", "kuning", "hijau"]);
  Set bwarna = new Set.from(["kuning", "hijau", "jingga"]);

  Set abwarna = bwarna.intersection(awarna); // mencari warna yang sama

  for (String warna in abwarna){
print(warna);
}


   Set numberSet = new Set.from([12,13,14]); 
   print("Default implementation :${numberSet.runtimeType}");  
   // all elements are retrieved in the order in which they are inserted 
   for(var no in numberSet) { 
      print(no); 
   } 

      var accounts = new HashMap(); 
   accounts['dept']='HR'; 
   accounts['name']='Tom'; 
   accounts['email']='tom@xyz.com'; 
   print('Map after adding  entries :${accounts}');

    var account = new HashMap(); 
   account.addAll({'dept':'HR','email':'tom@xyz.com'}); 
   print('Map after adding  entries :${account}'); 

   var accouns = new HashMap(); 
   accouns['dept'] = 'HR'; 
   accouns['name'] = 'Tom'; 
   accouns['email'] = 'tom@xyz.com'; 
   print('Map after adding  entries :${accouns}');
   accouns.remove('dept'); 
   print('Map after removing  entry :${accouns}');  
   accouns.clear(); 
   print('Map after clearing entries :${accouns}'); 
   
   Set numberSett = new  HashSet(); 
   numberSett.add(100); 
   numberSett.add(20); 
   numberSett.add(5); 
   numberSett.add(60); 
   numberSett.add(70); 
   print("Default implementation :${numberSet.runtimeType}"); 
   for(var no in numberSett){ 
      print(no); 

 }
   Set numberSets = new  HashSet(); 
   numberSets.addAll([100,200,300]); 
   print("Default implementation :${numberSets.runtimeType}"); 
   for(var no in numberSets){ 
      print(no); 
   } 
  

  Set numberSetd = new  HashSet(); 
   numberSetd.addAll([100,200,300]); 
   print("Printing hashet.. ${numberSetd}");  
   numberSetd.remove(100); 
   print("Printing hashet.. ${numberSetd}");  
   numberSetd.clear(); 
   print("Printing hashet.. ${numberSetd}"); 
}
