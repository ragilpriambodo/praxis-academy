// MaxDifference(A)
// maxDiff <- A[1] – A[0]
// min <- A[0]
// for i <- 1 to length[A] do
//     If A[i] – min > maxDiff
//         then maxDiff <- A[i] – min
//     If A[i] < min
//         then min <- A[i]
// return maxDiff
main() {
  var A = [10, 3, 4, 2, 20];
  print("Maximum Difference Value: ${MaxMinDiff(A).toString()}");
}
int MaxMinDiff(A) {
  int min = A[0];
  int max = A[0];
  for (var i=0; i<A.length; i++) {
    if (A[i]<min) {
      min = A[i];
    }
  }
  for (var i=0; i<A.length; i++) {
    if (A[i]>max) {
      max = A[i];
    }
  }
  return max - min;
}