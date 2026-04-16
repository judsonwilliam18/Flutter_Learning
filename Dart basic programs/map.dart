void main(){
  Map<String,dynamic> person={
    "name":"judson",
    "age":20
  };
  person.forEach((key,value){
    print("$key: $value");
    
  });
}