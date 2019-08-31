main(){
  var T = [1, 2, 3, 4, 5];
  print(equal(T, 0, T.length - 1));
}
int equal(T,st,end){
if (st > end) {
    return -1;
  }
  var mid1 = (st + end) /2;
   int mid = mid1.toInt();
  if (T[mid] > mid) {
    return equal(T,st,mid-1);
  }
  else if(T[mid] < mid){
    return equal(T,mid+1,end);
  }
  else{
    return mid;
  }
} 
