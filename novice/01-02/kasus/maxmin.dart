// MinMax(A)
// min <- A[0]
// max <- A[0]
// for i <- 1 to (length(A) - 1)
//     do if A[i] < min
//         then min <- A[i]
//     if A[i] > max
//         then max <- A[i]
// return min, max
main(List<String> args) {
  var A = [10, 3, 4, 2, 20];
  print("min : ${MinMax(A)[0]}");
  print("max : ${MinMax(A)[1]}");
}
MinMax(A){
  int min = A[0];
  int max = A[0];

  for(var i = 1; i<A.length; i++){
    if(A[i]<min){
      min = A[i];
    }
    if(A[i]>max){
      max = A[i];
    }
  }
  return [min,max];
}