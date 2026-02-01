void main(){

  // list of shape *Polymorphism*
  List <Shape> shapes =[
    Rectangle(10, 5),
    Circle(2),
    Rectangle(7, 5),
    Circle(4)
  ];
 
// Call calculateArea() for each shape
  for(var shape in shapes){
    print('Area = ${shape.calculateArea()}');
    print('=============================');
  }


}


abstract class Shape {
   double calculateArea();
} 

// class rectangle
class Rectangle implements Shape{
  double width;
  double height; 

  Rectangle(this.width , this.height);

  @override
  double calculateArea() {
    return height * width; 
  }
}

// class circle
class Circle implements Shape{
  double radius ;

  Circle(this.radius);
  
  @override
  double calculateArea() {
    return 3.14 * radius * radius;

  }
}