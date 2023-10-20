 //08 .Write a program to find out the max from given number

 import 'dart:io';

void main(){

  int n1,n2,n3,n4,n5,n6;

  print("Enter any Six Value to find Max value.");

  n1 = int.parse(stdin.readLineSync().toString());
  n2 = int.parse(stdin.readLineSync().toString());
  n3 = int.parse(stdin.readLineSync().toString());
  n4 = int.parse(stdin.readLineSync().toString());
  n5 = int.parse(stdin.readLineSync().toString());
  n6 = int.parse(stdin.readLineSync().toString());


  if(n1 >= n2 && n1 >= n3 && n1 >= n4 && n1 >= n5 && n1>=n6){
    print('Max Value of $n1 ,$n2 ,$n3 ,$n4 ,$n5 ,$n6 is $n1');
  }else if(n2 >= n3 && n2 >= n4 && n2 >= n5 && n2>=n6){
    print('Max Value of $n1 ,$n2 ,$n3 ,$n4 ,$n5 ,$n6 is $n2');
  }else if(n3 >= n4 && n3 >= n5 && n3>=n6){
    print('Max Value of $n1 ,$n2 ,$n3 ,$n4 ,$n5 ,$n6 is $n3');
  }else if(n4 >= n5 && n4>=n6){
    print('Max Value of $n1 ,$n2 ,$n3 ,$n4 ,$n5 ,$n6 is $n4');
  }else if(n5 >= n6){
    print('Max Value of $n1 ,$n2 ,$n3 ,$n4 ,$n5 ,$n6 is $n5');
  }else{
    print('Max Value of $n1 ,$n2 ,$n3 ,$n4 ,$n5 ,$n6 is $n6');
  }




}