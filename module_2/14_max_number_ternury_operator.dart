// 14. Write a program to find the Max number from the given three number using Ternary Operator

void main(){

  int a = 18 ,b = 45 ,c = 10 ,max;

  max = (a>=b && a>=c) ? a :(b>=c) ? b : c;

  print(" Number a ,b and c max Number is $max.");

 }