class Point {
  num x;
  num y;
}

void main() {
  var point = Point();
  point.x = 4; // digunakan untuk nilai setter method  x.
  assert(point.x == 4); // digunakan untuk nilai getter method for x.
  assert(point.y == null); // nilai default ke null.
  print(point.x);
  print(point.y);
}