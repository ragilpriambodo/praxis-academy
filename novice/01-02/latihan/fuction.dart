// main(List<String> args) {
  

// String say(String from, String msg,
//     [String device = 'carrier pigeon', String mood]) {
//   var result = '$from says $msg';
//   if (device != null) {
//     result = '$result with a $device';
//   }
//   if (mood != null) {
//     result = '$result (in a $mood mood)';
//   }
//   return result;
// }

// assert(say('Bob', 'Howdy') ==
//     'Bob says Howdy with a carrier pigeon');
// }

void main(List<String> arguments) {
  print(arguments);

  assert(arguments.length == 2);
  assert(int.parse(arguments[0]) == 1);
  assert(arguments[1] == 'test');
}