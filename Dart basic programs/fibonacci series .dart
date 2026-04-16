void main(){
  int n1=1;
  int n2=2;
  print(n1);
  print(n2);
 
 for(int i=3;i<=10;i++){
    int next=n1+n2;
    print(next);
    n1=n2;
    n2=next;
    
  }
}