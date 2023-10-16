// 7. Write a program to convert temperature from degree centigrade to
// Fahrenheit.

 void main(){

  // Formula to convert Celsius to Fahrenheit Formula :
  // Fahrenheit Temperature = (1.8 * celsius) + 32;

  int celsius = 25;
  double fahrenheit = (1.8 * celsius) + 32;

  print("Convert Celsius to Fahrenheit Value is $fahrenheit.");

  // Formula to convert temperature from degree Fahrenheit to degree Celsius :
  // celsius = (fahrenheit - 32) * 5 / 9.

  double celsius2 = (fahrenheit - 32) * 5 / 9 ;

  print("Convert Fahrenheit to celsius Value is $celsius2.");

 }