// MaxValue(A, p, r)
// max <- p
// for i <- p + 1 to r
//     if A[i] > A[max]
//         then max <- i
// return max

main() {
  var A = [10, 3, 4, 2, 20];
  print(MaxValue(A, 0, A.length));
}

MaxValue(A, p, r) {
  int max = p;
  for (int i = p + 1; i < r; i++) {
    if (A[i] > A[max]) {
      max = i;
    }
  }
  return max;
}