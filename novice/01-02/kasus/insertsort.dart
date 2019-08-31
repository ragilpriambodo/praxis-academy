main(){
  var A = [6, 2, 3, 66, 3];

  for (var i = 0; i < A.length; i++) {
    var key = A[i];
    var j = i;
    while (j > 0 && A[j - 1] > key) {
      A[j] = A[j - 1];
      j = j - 1;
    }
    A[j] = key;
  }
  print(A);
}