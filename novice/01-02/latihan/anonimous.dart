void main() {
  var list = ['apples', 'bananas', 'oranges','semangka']; //list digunakan untuk menampilakan data secara menurun
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });
}