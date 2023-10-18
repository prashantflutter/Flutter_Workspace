// 19.Write a program of to find out the Area of Triangle, Rectangle and
// Circle using If Condition.(Must Be Menu Driven)


void main(){

  int b = 20,h = 30,area_of_rectangle;
  double area_of_triangle,area_of_circle ,pie = 3.14;

  List area = ['Triangle','Rectangle','Circle'];

  if(area[0] == "Triangle"){
    // Area of Triangle = ½(b × h) where b is base and h is height.

    area_of_triangle = (b * h)/2;
    print('Area of Triangle is $area_of_triangle.');

  }else if(area[1] == "Rectangle"){

    // Formula of find Area of Rectangle : Area = length × width

    area_of_rectangle = h * b;
    print('Area of Rectangle is $area_of_rectangle.');

  }else if(area[2] == "Circle"){
    // Formula of find Area of Circle  : Area = Pie * Radius * Radius

    area_of_circle = pie * b * b;
    print("Area of Circle is $area_of_circle.");

  }else{
    print("Please Select the Area of the Menu.");
  }






}