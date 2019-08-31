// SelectionSort(A)
// for i <- 0 to (length[A] – 2) do
//     indexMin <- i
//     for j <- i +1 to (length[A] – 1) do
//         if A[j] < A[indexMin]
//             then indexMin = j
//     If indexMin != i     
//         then temp <- A[i]
//         A[i] <- A[indexMin]
//         A[indexMin] <- temp
main() {
  var A = [10, 3, 4, 2, 20];
  print(SelectionSort(A));
}
SelectionSort(A) {
  for (int i=0; i<A.length-1; i++) {
    int indexMin = i;
    for (int j=i+1; j<A.length; j++) {
      if (A[j]<A[indexMin]) {
        indexMin = j;
      }
    }
    if (indexMin != i) {
      int temp = A[i];
      A[i] = A[indexMin];
      A[indexMin] = temp;
    }
  }
  return A;
}