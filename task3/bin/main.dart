void main(){

  Employee employee = Employee('ahmed', 5000);
  print('name : ${employee.name}');
  employee.calculateSalary();
  print('=========================');
  Manager manager = Manager('mohammed', 7000, 1000);
   print('name : ${manager.name} ');
  manager.calculateSalary();


}


class Employee {
  String name ;
  double salary;
  Employee(this.name , this.salary);

  void calculateSalary(){
    print("salary : $salary");
  }


}
class Manager extends Employee{
  Manager(super.name , super.salary , this.bonus);
  double bonus ;
  @override
     calculateSalary(){
      print('salary : ${salary + bonus}');

     }
   



}