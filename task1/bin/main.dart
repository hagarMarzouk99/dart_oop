class Person {
  int age = 22 ;
  String name = "hagar";
  String email = 'hagar@gmail.com';

  Person({required this.name , required this.age , required this.email});   // constructor 

  void printDetails (){
    print('name : $name');
    print('email : $email');
    print('age : $age');

  }


}
void main (){
  Person person1 = Person( name: 'Hagar Marzouk' , age: 21 ,  email: 'hagar@gmail.com' );
  Person person2 = Person( name: 'Noura' , age: 21 ,  email: 'noura@gmail.com' );
  person1.printDetails();
  print('==================');
  person2.printDetails();
 
}