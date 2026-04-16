class Person{
  String name;
  int age;
  Person(this.name,this.age);
  void display(){
    print("Name:$name,Age:$age");
  }
}
void main(){
  Person p=Person("judson",20);
  p.display();
}