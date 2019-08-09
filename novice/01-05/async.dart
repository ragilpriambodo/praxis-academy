import 'dart:async';
void hello() async {
  print('something exciting is going to happen here...');
}
void main() async {
  await hello();
  print('all done');

print("\n\n<<<<<<<<ganti topik>>>>>>>>");
//
  var x = await four();
  print(x);
}

Future<int> four() async {
 return 4;
 
}
