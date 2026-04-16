void main(){
  List<int>marks=[60,70,80,90,98];
  int sum=0;
  for(var m in marks){
    sum+=m;
  }
 double avg=sum/marks.length;
  print("Aerage=$avg");
  if (avg >= 90) {
    print("Grade: A");
  } else if (avg >= 75) {
    print("Grade: B");
  } else if (avg >= 50) {
    print("Grade: C");
  } else {
    print("Fail");
  }

  
}