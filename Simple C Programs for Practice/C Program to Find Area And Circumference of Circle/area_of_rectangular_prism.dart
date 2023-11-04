// ○ find the area of a rectangular prism formula : A=2(wl+hl+hw) 


import 'dart:io';

void main(){
  
  print("Enter the value of length ,width and height to find area of a rectangular prism.");
  var a,l,w,h;
  l = int.parse(stdin.readLineSync().toString());
  w = int.parse(stdin.readLineSync().toString());
  h = int.parse(stdin.readLineSync().toString());

  a = 2 * ((w*l)+(h*l)+(h*w));
  print("area of a rectangular prism is $a.");
}