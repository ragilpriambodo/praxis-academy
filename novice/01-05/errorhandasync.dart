import 'dart:async';

Future<void> openFile(String fileName) async{
  throw new Exception("error");
}

void main() async {
  try{
    var result = await openFile("theFile");
    print("sukses!!!");
  }
  catch(e){
    print("Sepertinya sistem menemukan kesalahan : ${e.toString()}");
  }
}