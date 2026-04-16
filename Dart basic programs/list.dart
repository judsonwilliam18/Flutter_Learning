void main(){
  List<int> numberslist=[10,20,30,40,50];
  print(numberslist);
  var largest=numberslist[0];
  for(var n in numberslist){
    largest=n;
  }
  print("Largest=$largest");
}