main() {
  var A = [10, 3, 4, 2, 20];
  var i;
  for (i = A.length - 1; i >= 0; i--) {
    var key = A[i];
    var j = i + 1;
    while (j < A.length && key > A[j]) {
      A[j - 1] = A[j];
      j = j + 1;
    }
    A[j - 1] = key;
  }
  print(A);
}