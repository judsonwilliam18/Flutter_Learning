void main(){
  var str="madam";
  var reversed=str.split('').reversed.join();
  if(str== reversed){
    print("palindrome");
  }else{
    print("not palindrome");
  }
}